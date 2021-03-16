import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reg_perguntas/app/pages/home_page/home_page.dart';
import 'package:reg_perguntas/core/data/datasources/pergunta_datasource_hive.dart';
import 'package:reg_perguntas/core/data/repositorios/pergunta_repositorio.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';
import 'package:reg_perguntas/core/domain/use_cases/buscar_perguntas.dart';

class CadastroPerguntaController extends GetxController {
  BuscarPerguntas _buscarPerguntas;

  TextEditingController perguntaController;
  TextEditingController respostaController;
  TextEditingController hip1Controller;
  TextEditingController hip2Controller;
  TextEditingController hip3Controller;
  TextEditingController hip4Controller;

  var _valorSelecionado = 'Hipotese 1'.obs;

  String get valorSelecionado => _valorSelecionado.value;
  set valorSelecionado(String newValue) {
    _valorSelecionado.value = newValue;
  }

  final hips = [
    'Hipotese 1',
    'Hipotese 2',
    'Hipotese 3',
    'Hipotese 4',
  ];

  CadastroPerguntaController() {
    perguntaController = TextEditingController();
    respostaController = TextEditingController();
    hip1Controller = TextEditingController();
    hip2Controller = TextEditingController();
    hip3Controller = TextEditingController();
    hip4Controller = TextEditingController();

    var dataSource = PerguntaDatasourceHive.instance();
    var repositorio = PerguntaRepository(dataSource);
    _buscarPerguntas = BuscarPerguntas(repositorio);
  }

  get perguntaMaxLength => 100;
  get hipotesesMaxLength => 43;

  salvar() async {
    var perguntaPorSalvar = await getPerguntaModel();
    var result = await _buscarPerguntas.addPergunta(perguntaPorSalvar);
    if (result) {
      await Get.dialog(
        Container(
          child: Text('Pergunta salva com sucesso'),
        ),
        barrierDismissible: true,
      );
    } else {
      await Get.dialog(
        Container(
          child: Text('Erro ao salvar a pergunta'),
        ),
        barrierDismissible: true,
      );
    }
    Get.off(HomePage());
  }

  Future<Pergunta> getPerguntaModel() async {
    var idBox = await Hive.openBox(
      'idBox',
      path: (await getApplicationDocumentsDirectory()).path,
    );
    int lastId = idBox.get('lastId', defaultValue: 0);
    await idBox.put('lastId', (lastId + 1));
    var pergunta = perguntaController.text;
    var resposta;
    var hip1 = hip1Controller.text;
    var hip2 = hip2Controller.text;
    var hip3 = hip3Controller.text;
    var hip4 = hip4Controller.text;
    switch (valorSelecionado) {
      case 'Hipotese 1':
        resposta = hip1Controller.text;
        break;
      case 'Hipotese 2':
        resposta = hip2Controller.text;
        break;
      case 'Hipotese 3':
        resposta = hip3Controller.text;
        break;
      case 'Hipotese 4':
        resposta = hip4Controller.text;
        break;
    }
    return Pergunta(
      lastId,
      'padrao',
      pergunta,
      resposta,
      [hip1, hip2, hip3, hip4],
    );
  }

  limpar() {}
}
