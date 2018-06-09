load('api_config.js');
load('api_rpc.js');
load('api_gpio.js');
load('api_timer.js');
load('api_mqtt.js');
load('api_sensor_utils.js');
load('api_ssd1306.js');
load('api_bme280.js');
load('api_adc.js');

// Who are we
let sensorname = Cfg.get('sensor.name');

// Turn on BMP / BME 280 sensor
let sensor = BME280.createSPI();

// Battery on pin 35
let battery = 32;
ADC.enable(battery);

//let OurADC = {
//readv: ffi('int mgos_adc_read_voltage(int)'), };

// On the ESP32 dev board we are using, GPIO pin 16 is connected to the OLED
//  RST pin.   We pull this pin high to power the OLED
// TODO - Make this a config element
GPIO.set_pull(16, GPIO.PULL_UP);

let oled = SSD1306.get_oled();
oled.refresh();

// Start a 5 second refresh loop (15 second "final" refresh?)
Timer.set(15000, true, function() {
		// Read the sensor data
		let reading={
			"sensor": sensorname,
			"vadc": ADC.read(battery),
	//		"vadcv": OurADC.readv(battery),
			"pressure": SensorUtils.atmospheresHg(sensor.readPress()),
			"temp": sensor.readTemp(),
			"humidity": Math.round(sensor.readHumid())
		};
	  let tf = Math.round(SensorUtils.fahrenheit(reading.temp));

		// Get battery voltage - 6800 / 2200 divider, adc ref 1.1
		//
		reading.voltage = (reading.vadc/4095)*1.1*(6800/2200);

		// Update the OLED Display
		oled.clearDisplay();
		oled.drawStrColor(2, 11, "Temp (c): " + JSON.stringify(reading.temp),1,0);
		oled.drawStrColor(2, 21, "Temp (f): " + JSON.stringify(tf),1,0);
		oled.drawStrColor(2, 31, "Pressure: " + JSON.stringify(reading.pressure),1,0);
		oled.drawStrColor(2, 41, "Humidity: " + JSON.stringify(reading.humidity) + "%",1,0);
		oled.drawStrColor(2, 51, "Battery: " + JSON.stringify(reading.voltage),1,0);
		oled.refresh();

		// Publish current data via mqtt
		let res = MQTT.pub('environment/data', JSON.stringify(reading),0);

		// Print output to console.
		print(JSON.stringify(reading));
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
