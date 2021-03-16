import 'package:flutter/material.dart';
import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';

class PerguntaDetail extends StatelessWidget {
  PerguntaDetail(this.pergunta);

  final Pergunta pergunta;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AtributoWidget(title: 'pergunta', text: pergunta.pergunta),
            // AtributoWidget(title: 'resposta', text: pergunta.resposta),
            ...pergunta.hipoteses
                .map((e) => AtributoWidget(
                      title: 'Hipotese ${pergunta.hipoteses.indexOf(e) + 1}',
                      text: e,
                      resposta: (pergunta.resposta == e),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}

class AtributoWidget extends StatelessWidget {
  const AtributoWidget({
    Key key,
    this.title,
    this.text,
    this.resposta = false,
  }) : super(key: key);

  final String title;
  final String text;
  final bool resposta;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: resposta ? Colors.greenAccent : Colors.white),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.orangeAccent,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 5),
          Align(alignment: Alignment.topLeft, child: Text(text)),
        ],
      ),
    );
  }
}
