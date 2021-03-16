import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:reg_perguntas/app/pages/cadastrar_pergunta/cadastro_pergunta.dart';
import 'package:reg_perguntas/core/data/datasources/pergunta_datasource_hive.dart';
import 'package:reg_perguntas/core/data/repositorios/pergunta_repositorio.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';
import 'package:reg_perguntas/core/domain/use_cases/buscar_perguntas.dart';

class HomePageController extends GetxController {
  BuscarPerguntas _buscarPerguntas;
  List<Pergunta> perguntasCache;

  HomePageController() {
    var dataSource = PerguntaDatasourceHive.instance();
    var repositorio = PerguntaRepository(dataSource);
    _buscarPerguntas = BuscarPerguntas(repositorio);
  }

  Future<List<Pergunta>> get perguntasSalvas async {
    if (perguntasCache == null) {
      var result = await _buscarPerguntas.getPerguntas();
      perguntasCache = result;
      return perguntasCache;
    } else {
      return perguntasCache;
    }
  }

  Future<void> atualizarLista() async {
    var result = await _buscarPerguntas.getPerguntas();
    perguntasCache = result;
  }

  goToCadastrarPage() {
    Get.delete<HomePageController>();
    Get.off(CadastrarPergunta());
  }
}
