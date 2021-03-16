import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reg_perguntas/core/data/datasources/pergunta_datasource.dart';
import 'package:reg_perguntas/core/data/models/pergunta_model.dart';

class PerguntaDatasourceHive extends PerguntaDataSource {
  Box box;

  static PerguntaDatasourceHive _instance;

  factory PerguntaDatasourceHive.instance() {
    if (_instance == null) _instance = PerguntaDatasourceHive._();
    return _instance;
  }

  PerguntaDatasourceHive._();

  createBox() async {
    box = await Hive.openBox(
      'perguntas',
      path: (await getApplicationDocumentsDirectory()).path+'/hive_cache/',
    );
  }

  @override
  Future<bool> addPergunta(PerguntaModel pergunta) async {
    await createBox();
    try {
      await box.put(pergunta.idPergunta, pergunta.toJson());
      return true;
    } catch (e) {
      print('Ocorreu um erro ao adicionar a pessoa na caixa');
      return false;
    }
  }

  @override
  Future<PerguntaModel> getPergunta(int idPergunta) async {
    await createBox();

    var perguntaMapResult = await box.get(idPergunta);
    return PerguntaModel.fromJson(perguntaMapResult);
  }

  @override
  Future<List<PerguntaModel>> getPerguntas() async {
    await createBox();

    var perguntaList =
        box.toMap().values.map((e) => PerguntaModel.fromJson(e)).toList();
    return perguntaList;
  }
}
