import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:reg_perguntas/core/domain/entitys/pergunta.dart';

class PerguntaModel extends Pergunta {
  int idPergunta;
  String categoria;
  String pergunta;
  String resposta;
  List<String> hipoteses;

  PerguntaModel([
    this.idPergunta,
    this.categoria,
    this.pergunta,
    this.resposta,
    this.hipoteses,
  ]) : super(
          idPergunta,
          categoria,
          pergunta,
          resposta,
          hipoteses,
        );

  PerguntaModel copyWith({
    int idPergunta,
    String categoria,
    String pergunta,
    String resposta,
    List<String> hipoteses,
  }) {
    return PerguntaModel(
      idPergunta ?? this.idPergunta,
      categoria ?? this.categoria,
      pergunta ?? this.pergunta,
      resposta ?? this.resposta,
      hipoteses ?? this.hipoteses,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idPergunta': idPergunta,
      'categoria': categoria,
      'pergunta': pergunta,
      'resposta': resposta,
      'hipoteses': hipoteses,
    };
  }

  factory PerguntaModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return PerguntaModel(
      map['idPergunta'],
      map['categoria'],
      map['pergunta'],
      map['resposta'],
      List<String>.from(map['hipoteses']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PerguntaModel.fromJson(String source) =>
      PerguntaModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PerguntaModel(idPergunta: $idPergunta, categoria: $categoria, pergunta: $pergunta, resposta: $resposta, hipoteses: $hipoteses)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is PerguntaModel &&
        o.idPergunta == idPergunta &&
        o.categoria == categoria &&
        o.pergunta == pergunta &&
        o.resposta == resposta &&
        listEquals(o.hipoteses, hipoteses);
  }

  @override
  int get hashCode {
    return idPergunta.hashCode ^
        categoria.hashCode ^
        pergunta.hashCode ^
        resposta.hashCode ^
        hipoteses.hashCode;
  }

  static PerguntaModel fromPergunta(Pergunta pergunta) {
    return PerguntaModel(
      pergunta.idPergunta,
      pergunta.categoria,
      pergunta.pergunta,
      pergunta.resposta,
      pergunta.hipoteses,
    );
  }
}
