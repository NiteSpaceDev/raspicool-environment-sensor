load('api_config.js');
load('api_rpc.js');
load('api_gpio.js');
load('api_dht.js');
load('api_timer.js');
load('api_sensor_utils.js');
load('api_ssd1306.js');



let pin = Cfg.get('app.pin');
let dht = DHT.create(pin, Cfg.get('app.sensor'));

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
	  let tc = dht.getTemp();
	  let tf = SensorUtils.fahrenheit(tc);
	  let temp = Math.round(tc);
	  let hum = Math.round(dht.getHumidity());
	  print('Temperature:', tc, 'c    ', tf, 'f     -    Rel Humidity: ', hum, '%');
	  OLPrint(oled, "Temp: " + JSON.stringify(temp));
	}, null);

RPC.addHandler('Temp.Read', function(args) {
	  return { value: dht.getTemp() };
	});

RPC.addHandler('Humid.Read', function(args) {
	  return { value: dht.getHumidity() };
	});

