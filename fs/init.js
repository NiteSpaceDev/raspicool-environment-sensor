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
GPIO.set_pull(16, GPIO.PULL_UP);

let oled = SSD1306.get_oled();
oled.refresh();

// Start a 5 second refresh loop (15 second "final" refresh?)
Timer.set(5000, true, function() {
		// Read the sensor data
	  let tc = sensor.readTemp();
	  let tf = Math.round(SensorUtils.fahrenheit(tc));
	  let temp = Math.round(tc);
	  let hum = Math.round(sensor.readHumid());
	  let press = SensorUtils.atmospheresHg(sensor.readPress());

		// Update the OLED Display
		oled.clearDisplay();
		oled.drawStrColor(2, 11, "Temp (c): " + JSON.stringify(temp),1,0);
		oled.drawStrColor(2, 21, "Temp (f): " + JSON.stringify(tf),1,0);
		oled.drawStrColor(2, 31, "Pressure: " + JSON.stringify(press),1,0);
		oled.drawStrColor(2, 41, "Humidity: " + JSON.stringify(hum) + "%",1,0);
		oled.refresh();

		// Print output to console.
		print('Temperature:', tc, 'c    ', tf, 'f     -    Rel Humidity: ', hum, '%   Press: ', press);
	}, null);

// RPC handlers for sensors
RPC.addHandler('Temp.Read', function(args) {
	  return { value: sensor.readTemp() };
	});

RPC.addHandler('Humid.Read', function(args) {
	  return { value: sensor.readHumid() };
	});

RPC.addHandler('Press.Read', function(args) {
	  return { value: sensor.readPress() };
	});
