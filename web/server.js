// Minimal HTTP server so the container has something to run
const http = require('http');
const port = 3000;
http.createServer((req, res) => {
  res.writeHead(200, {'content-type':'text/plain'});
  res.end('QTrader Web is running\n');
}).listen(port, () => console.log(`Web listening on ${port}`));
