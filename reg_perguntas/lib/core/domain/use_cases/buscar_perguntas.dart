import 'package:reg_perguntas/core/data/repositorios/pergunta_repositorio.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';

abstract class IBuscarPerguntas {
  Future<bool> addPergunta(Pergunta pergunta);
  Future<Pergunta> getPergunta(int idPergunta);
  Future<List<Pergunta>> getPerguntas();
}

class BuscarPerguntas implements IBuscarPerguntas {
  final PerguntaRepository repositorio;

  BuscarPerguntas(this.repositorio);

  @override
  Future<Pergunta> getPergunta(int idPergunta) async {
    if (idPergunta != null) {
      var result = repositorio.getPergunta(idPergunta);
      return result;
    } else
      throw Exception('idPergunta está nula');
  }

  @override
  Future<List<Pergunta>> getPerguntas() async {
    var result = await repositorio.getPerguntas();
    return result == null ? [] : result;
  }

  @override
  Future<bool> addPergunta(Pergunta pergunta) async {
    var result = await repositorio.addPergunta(pergunta);
    return result;
  }
}
