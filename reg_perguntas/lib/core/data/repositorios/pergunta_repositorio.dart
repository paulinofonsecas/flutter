import 'package:reg_perguntas/core/data/datasources/pergunta_datasource_hive.dart';
import 'package:reg_perguntas/core/data/models/pergunta_model.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';
import 'package:reg_perguntas/core/domain/repositorios/pergunta_repository.dart';

class PerguntaRepository implements IPerguntaRepositoriy {
  final PerguntaDatasourceHive _dataSourceSqflite;

  PerguntaRepository(this._dataSourceSqflite);

  @override
  Future<List<Pergunta>> getPerguntas() async {
    List<Pergunta> result = await _dataSourceSqflite.getPerguntas();
    return result;
  }

  @override
  Future<bool> addPergunta(Pergunta pergunta) async {
    var result = await _dataSourceSqflite
        .addPergunta(PerguntaModel.fromPergunta(pergunta));
    return result;
  }

  @override
  Future<Pergunta> getPergunta(int idPergunta) async {
    Pergunta result = await _dataSourceSqflite.getPergunta(idPergunta);
    return result;
  }
}
