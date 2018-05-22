load('api_config.js');
load('api_rpc.js');
load('api_dht.js');
load('api_timer.js');
load('api_sensor_utils.js');
load('api_arduino_ssd1306.js');

let pin = Cfg.get('app.pin');
let dht = DHT.create(pin, Cfg.get('app.sensor'));

let oled = Adafruit_SSD1306.create_i2c(4, Adafruit_SSD1306.RES_128_32);
oled.begin(Adafruit_SSD1306.SWITCHCAPVCC, 0x3C, true);
oled.display();

let OLPrint = function(d, str) {
	d.clearDisplay();
	d.setTextSize(2);
	d.setTextColorBg(Adafruit_SSD1306.WHITE, Adafruit_SSD1306.BLACK);
	d.setCursor(4, 4);
	d.write(str);
	d.display();
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

