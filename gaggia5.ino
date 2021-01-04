




#include <PID_v1.h>
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <MAX31855.h>
#define RelayPin D2

// Update these with values suitable for your network.

const char* ssid = "XXXXXXX"; // Input your SSID here
const char* password = "XXXXXXXXX"; // Input your WiFi password here
const char* mqtt_server = "0.0.0.0"; // The IP address of the MQTT server

//Define Variables we'll be connecting to
double Setpoint, Input, Output;
float Tempfloat;

//Specify the links and initial tuning parameters
PID myPID(&Input, &Output, &Setpoint, 2, 5, 1, DIRECT);

WiFiClient espClient;
PubSubClient client(espClient);
long lastMsg = 0;
char msg[50];
int value = 0;
int sensor = 0;
float volt = 1;
float sensorfloat = 1;
float temp = 1;
int32_t rawData = 0;


/*
  MAX31855(cs)

  cs - chip select
*/

MAX31855 myMAX31855(5); //chip select pin, for ESP8266 change to D4 (fails to BOOT/FLASH if pin LOW)


void setup_wifi() {


  delay(10);
 // We start by connecting to a WiFi network
  Serial.println();
  Serial.print("Connecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  randomSeed(micros());

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());
}

//Establish callback and recieve new setpoint

void callback(char* topic, byte* payload, unsigned int length) {
  Serial.print("Message arrived [");
  Serial.print(topic);
  Serial.print("] ");
  for (int i = 0; i < length; i++) {
    Serial.print((char)payload[i]);
  }
  Serial.println();
  char buffer[128];

// Make sure here that `length` is smaller than the above buffer size. 
// Otherwise, you'd need a bigger buffer

// Form a C-string from the payload
memcpy(buffer, payload, length);
buffer[length] = '\0';

// Convert it to integer
char *end = nullptr;
double vaerdi = strtol(buffer, &end, 10);

Serial.println("New setpoint");
Serial.println(vaerdi);

// and assign to the PIDs Setpoint variable, but only if it is within the valid range

if (0 < vaerdi < 120) {

  Setpoint = vaerdi;
}

//Publish new (or old, if the  setpoint in the state topic

client.publish("gaggia/temperature/state", String(Setpoint).c_str(), true);

}

void reconnect() {
  // Loop until we're reconnected
  while (!client.connected()) {
    Serial.print("Attempting MQTT connection...");
    // Create a random client ID
    String clientId = "ESP8266Client-";
    clientId += String(random(0xffff), HEX);
    // Attempt to connect, set your username and password for MQTT here
    if (client.connect(clientId.c_str(), "username", "password")) {
      Serial.println("connected");
      // Once connected, publish an announcement...
      client.publish("outTopic", "her er jeg igen");
      // ... and resubscribe
      client.subscribe("gaggia/temperature/set");
    } else {
      Serial.print("failed, rc=");
      Serial.print(client.state());
      Serial.println(" try again in 5 seconds");
      // Wait 5 seconds before retrying
      delay(5000);
    }
  }
}


int WindowSize = 5000; // Duration of the duty cycle window
unsigned long windowStartTime;

void setup() {
  pinMode(RelayPin, OUTPUT);     // Initialize the relay pin as an output
  Serial.begin(115200);
  setup_wifi();
  client.setServer(mqtt_server, 1883); // Change the MQTT servers port here if you have to
  client.setCallback(callback);
  windowStartTime = millis();

  //initialize the setpoint variable we're linked to
  Setpoint = 40;

    //tell the PID to range between 0 and the full window size of the duty cycle
  myPID.SetOutputLimits(0, WindowSize);

    //turn the PID on
  myPID.SetMode(AUTOMATIC);


  /* start MAX31855 */
  myMAX31855.begin();

  while (myMAX31855.getChipID() != MAX31855_ID)
  {
    Serial.println(F("MAX6675 error")); //(F()) saves string to flash & keeps dynamic memory free
    delay(5000);
  }
  Serial.println(F("MAX6675 OK"));
  
}


void loop() {

  if (!client.connected()) {
    reconnect();
  }
  client.loop();


//Send error messages to serial 
  while (myMAX31855.detectThermocouple() != MAX31855_THERMOCOUPLE_OK)
  {
    switch (myMAX31855.detectThermocouple())
    {
      case MAX31855_THERMOCOUPLE_SHORT_TO_VCC:
        Serial.println(F("Thermocouple short to VCC"));
        break;

      case MAX31855_THERMOCOUPLE_SHORT_TO_GND:
        Serial.println(F("Thermocouple short to GND"));
        break;

      case MAX31855_THERMOCOUPLE_NOT_CONNECTED:
        Serial.println(F("Thermocouple not connected"));
        break;

      case MAX31855_THERMOCOUPLE_UNKNOWN:
        Serial.println(F("Thermocouple unknown error"));
        break;

      case MAX31855_THERMOCOUPLE_READ_FAIL:
        Serial.println(F("Thermocouple read error, check chip & spi cable"));
        break;
    }
    delay(5000);
  }



//Update Output each time a tenth of the timewindow has passed

unsigned long now = millis();




if (now - windowStartTime > WindowSize / 5){

//read the sensor and compute PID output 

rawData = myMAX31855.readRawData();


  
sensor = myMAX31855.getTemperature(rawData);
Input = (double)sensor;
myPID.Compute();  
  
  }


//Update and transmit each time a timewindow has passed  
  if (now - windowStartTime > WindowSize){
    windowStartTime += WindowSize;
    ++value;
    snprintf (msg, 50, "aflaesning %ld", value);
    Serial.print("Publish message: ");
    Serial.println(msg);
    Serial.println(sensor);
    Serial.println(" celcius");
    
      client.publish("gaggia/temperature/current", String(sensor).c_str(), true);
  
  Serial.println(Output);

  
  }

// Use output to adjust duty cycle of relay
  
  if (Output > now - windowStartTime) digitalWrite(RelayPin, HIGH);
  else digitalWrite(RelayPin, LOW);
 
  }
