import 'package:shelf/shelf.dart';
import 'package:shlef_router/shelf_router.dart';

class SeveRandler {
  Handler get handler{
    final router = Router();

    router.get('/', (Request request) {
      return Response(200, body: 'Primeira Rota',); 

    },);

    return router;
  }
}