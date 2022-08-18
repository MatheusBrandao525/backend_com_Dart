import 'package:backend/backend.dart' as backend;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'sever_handler.dart';

void main() async {
  var _sever = SeveHandler();

  final sever = await shelf_io.serve(_sever.handler, 'localhost', 8181);

  print('Nosso servidor está rodando em: http://localhost:8181');
}
