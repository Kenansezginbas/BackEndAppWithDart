import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_router/shelf_router.dart';

void main(List<String> arguments) {
  final app = Router();
  final Map<String, dynamic> userData = {
    "username": "Key",
    "fullname": "Kenan Sezginbas",
    "age": 31,
    "x": true,
  };

  app.get("/", (Request request) {
    return Response.ok(jsonEncode(userData));
  });

  app.post("/", (Request request) {
    return Response.ok("Post Islemi");
  });

  serve(app, "localhost", 8080);//
}
