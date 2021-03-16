import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reg_perguntas/app/controllers/cadastro_pergunta/cadastro_pergunta_controller.dart';

class CadastrarPergunta extends StatefulWidget {
  @override
  _CadastrarPerguntaState createState() => _CadastrarPerguntaState();
}

class _CadastrarPerguntaState extends State<CadastrarPergunta> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CadastroPerguntaController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Pergunta'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Column(
                children: [
                  TextField(
                    controller: controller.perguntaController,
                    maxLength: controller.perguntaMaxLength,
                    maxLines: 3,
                    onChanged: (v) => setState(() {}),
                    decoration: InputDecoration(
                      counter: Text(
                        '${controller.perguntaController.text.length}/${controller.perguntaMaxLength}',
                      ),
                      hintText: 'Pergunta',
                    ),
                  ),
                  TextField(
                    controller: controller.hip1Controller,
                    maxLength: controller.hipotesesMaxLength,
                    onChanged: (v) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: 'Hipotese 1',
                      counter: Text(
                          '${controller.hip1Controller.text.length}/${controller.hipotesesMaxLength}'),
                    ),
                  ),
                  TextField(
                    controller: controller.hip2Controller,
                    maxLength: controller.hipotesesMaxLength,
                    onChanged: (v) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: 'Hipotese 2',
                      counter: Text(
                          '${controller.hip2Controller.text.length}/${controller.hipotesesMaxLength}'),
                    ),
                  ),
                  TextField(
                    controller: controller.hip3Controller,
                    maxLength: controller.hipotesesMaxLength,
                    onChanged: (v) => setState(() {}),
                    decoration: InputDecoration(
                      hintText: 'Hipotese 3',
                      counter: Text(
                          '${controller.hip3Controller.text.length}/${controller.hipotesesMaxLength}'),
                    ),
                  ),
                  TextField(
                    controller: controller.hip4Controller,
                    maxLength: controller.hipotesesMaxLength,
                    onChanged: (v) => setState(() {
                      print(controller.hip4Controller.text);
                    }),
                    decoration: InputDecoration(
                      hintText: 'Hipotese 4',
                      counter: Text(
                          '${controller.hip4Controller.text.length}/${controller.hipotesesMaxLength}'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              GetBuilder<CadastroPerguntaController>(
                builder: (c) => DropdownButton(
                  items: controller.hips
                      .map(
                        (e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    c.valorSelecionado = value;
                    c.update();
                  },
                  value: c.valorSelecionado,
                ),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Spacer(),
                  FlatButton(
                    color: Colors.lightGreen,
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    onPressed: controller.salvar,
                    child: Text('Salvar'),
                  ),
                  Spacer(),
                  FlatButton(
                    color: Colors.redAccent,
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    onPressed: controller.limpar,
                    child: Text('Limpar'),
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
