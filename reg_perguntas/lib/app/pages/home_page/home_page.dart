import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reg_perguntas/app/controllers/home_page/home_page_controller.dart';
import 'package:reg_perguntas/app/pages/pergunta_detail/pergunta_details.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';

import 'components/empty_list_widget.dart';
import 'components/pergunta_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Perguntas Salvas'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: (controller.perguntasCache != null)
                  ? Text(
                      '${controller.perguntasCache.length}',
                    )
                  : Text('0'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: controller.goToCadastrarPage,
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          controller.atualizarLista();
          setState(() {});
        },
        child: FutureBuilder<List<Pergunta>>(
          future: controller.perguntasSalvas,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              // Este bloco de codigo é executado assim que a future
              // é concluída
              var perguntaList = snapshot.data;
              if (perguntaList.isEmpty)
                return EmptyListWidget();
              else
                return PerguntaListWidget(perguntaList: perguntaList);
            } else {
              // este bloco de codigo é executado enquanto a future
              // está a ser computada
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}

