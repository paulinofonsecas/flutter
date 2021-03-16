import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reg_perguntas/app/pages/pergunta_detail/pergunta_details.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';

class PerguntaListWidget extends StatelessWidget {
  const PerguntaListWidget({
    Key key,
    @required this.perguntaList,
  }) : super(key: key);

  final List<Pergunta> perguntaList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: perguntaList.length,
      itemBuilder: (context, index) {
        var pergunta = perguntaList[index];
        return ListTile(
          onTap: () => Get.to(PerguntaDetail(pergunta)),
          title: Text(
            pergunta.pergunta.capitalizeFirst,
            style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 21,
                ),
          ),
          subtitle: Row(
            children: [
              Text(
                'Resposta: ',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ('${pergunta.resposta}'.length > 10)
                    ? '${pergunta.resposta.substring(0, 25)}...'
                    : '${pergunta.resposta}',
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.orangeAccent,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

