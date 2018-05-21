load('api_config.js');
load('api_rpc.js');
load('api_dht.js');
load('api_timer.js');

let pin = Cfg.get('app.pin');
let dht = DHT.create(pin, Cfg.get('app.sensor'));

Timer.set(1000, true, function() {
	  print('Temperature:', dht.getTemp());
	}, null);

Timer.set(1000, true, function() {
	  print('Humidity:', dht.getHumidity());
	}, null);

RPC.addHandler('Temp.Read', function(args) {
	  return { value: dht.getTemp() };
	});

RPC.addHandler('Humid.Read', function(args) {
	  return { value: dht.getHumidity() };
	});
