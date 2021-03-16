import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';

abstract class IPerguntaRepositoriy {
  Future<bool> addPergunta(Pergunta pergunta);
  Future<Pergunta> getPergunta(int idPergunta);
  Future<List<Pergunta>> getPerguntas();
}
