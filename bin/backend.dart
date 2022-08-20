import 'package:backend/backend.dart' as backend; 
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

import 'server_handler.dart';

void main(List<String> arguments) async {
  var _server = ServeHandler();

  final server = await shelf_io.serve(_server.handler, 'localhost', 8181);

  print('Nosso servidor está rodando em: http://localhost:8181');
}
