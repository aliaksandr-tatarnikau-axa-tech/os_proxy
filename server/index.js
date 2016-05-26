const httpProxy = require('http-proxy');

console.log('Proxy starting...');
httpProxy.createServer({
  target: 'https://10.144.83.162:8445',
  secure: false
}).listen(8080);
