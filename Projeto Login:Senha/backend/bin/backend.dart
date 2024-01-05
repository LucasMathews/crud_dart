import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'server_handler.dart';

void main() async {//Diversas tarefas executam ao mesmo tempo enquanto aguardo(Await) a requisição.
var _server = ServeHandler();

  final server = await shelf_io.serve(_server.handler,'localhost', 8080);
                //Await - Aguardo as tarefas serem executadas para obter o retorno.

  print('O servidor foi iniciado com sucesso http://localhost:8080');
}
