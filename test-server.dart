import 'dart:io';

main() {
  var server = new HttpServer();
  server.listen('127.0.0.1', 8080);
  server.defaultRequestHandler = (HttpRequest request, HttpResponse response) {
    response.outputStream.write('Hello, world'.charCodes);
    response.outputStream.close();
  };
}