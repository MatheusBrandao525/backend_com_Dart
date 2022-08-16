import 'package:backend/backend.dart' as backend;
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

void main(List<String> arguments) async {
  final sever = await shelf_io.serve(
      (request) => Response(200, body: 'ok'), 'localhost', 8181);

  print('Nosso servidor está rodando em: http://localhost:8181');
}
