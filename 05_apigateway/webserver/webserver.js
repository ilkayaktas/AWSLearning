var http = require('http');
var os = require('os');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});

    if (req.url == "/users"){
        res.write("Ahmet, Mehmet, Ayse");
    }
    else if(req.url == "/count"){
        res.write("3");
    } 
    else if(req.url == "/health"){
        res.write("OK");
    } 
    else{
        res.write("No request!!! ");
    }
    res.end("\n"+os.hostname()+"\n");
}).listen(8888);