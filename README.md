# ESP-12_thermostat

This project can be used as a Wi-Fi enabled PID temperature controller. It is designed for use in appliances - Originally an espresso machine. The software is designed to interface through an MQTT broker - I use mosquitto running on a Hass.io server.

The features are:

Hardware:<br>
3.3V onboard power supply<br>
ESP8266 (ESP12) module for wifi connectivity and processing.<br>
MAX31855 thermocouple amplifier.<br>
Screw terminals for AC power, thermocouple input and relay output.<br>
Breakout connectors for programming of the ESP8266 after assembly of the PCB.

Software:<br>
Temperature readout through SPI<br>
PID controlled relay output<br>
MQTT temperature readout and setpoint setting.
