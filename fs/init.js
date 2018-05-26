load('api_config.js');
load('api_rpc.js');
load('api_gpio.js');
load('api_timer.js');
load('api_sensor_utils.js');
load('api_ssd1306.js');
load('api_bme280.js');

// Turn on BMP / BME 280 sensor
let sensor = BME280.createSPI();

// On the ESP32 dev board we are using, GPIO pin 16 is connected to the OLED
//  RST pin.   We pull this pin high to power the OLED
// TODO - Make this a config element
GPIO.set_mode(16, GPIO.MODE_OUTPUT);
GPIO.write(16, GPIO.PULL_UP);

let oled = SSD1306.get_oled();
print("OLED WxH:  ", oled.getHeight(), "x", oled.getWidth());
oled.refresh();

let OLPrint = function(d, str) {
	d.clearDisplay();
	d.drawStrColor(2, 14, str, 1, 0);
	d.refresh();
};

Timer.set(1000, true, function() {
	  let tc = sensor.readTemp();
	  let tf = SensorUtils.fahrenheit(tc);
	  let temp = Math.round(tc);
	  let hum = Math.round(sensor.readHumid());
	  let press = sensor.readPress();
	  print('Temperature:', tc, 'c    ', tf, 'f     -    Rel Humidity: ', hum, '%   Press: ', press);
	  OLPrint(oled, "Temp: " + JSON.stringify(temp));
	}, null);

RPC.addHandler('Temp.Read', function(args) {
	  return { value: sensor.readTemp() };
	});

RPC.addHandler('Humid.Read', function(args) {
	  return { value: sensor.readHumid() };
	});

RPC.addHandler('Press.Read', function(args) {
	  return { value: sensor.readPress() };
	});
