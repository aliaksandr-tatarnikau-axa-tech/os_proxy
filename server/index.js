const httpProxy = require('http-proxy');

console.log('Proxy starting...');
httpProxy.createProxyServer({target:'http://10.144.83.162:8445'}).listen(8080);
console.log('Proxy started');
