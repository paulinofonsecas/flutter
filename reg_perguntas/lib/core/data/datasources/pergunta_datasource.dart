import 'package:reg_perguntas/core/data/models/pergunta_model.dart';
// import 'package:sqflite/sqflite.dart';

abstract class PerguntaDataSource {
  Future<bool> addPergunta(PerguntaModel pergunta);
  Future<PerguntaModel> getPergunta(int idPergunta);
  Future<List<PerguntaModel>> getPerguntas();
}

// class PerguntaDataSourceSqflite implements PerguntaDataSource {
//   static PerguntaDataSourceSqflite _instance;
//   Database db;

//   PerguntaDataSourceSqflite._();

//   factory PerguntaDataSourceSqflite.instance() {
//     if (_instance == null) _instance = PerguntaDataSourceSqflite._();
//     return _instance;
//   }

//   openDataBase() async {
//     if (db == null) {
//       db = await openDatabase(
//         await getDatabasesPath(),
//         onCreate: (db, version) {
//           var sql = '''CREATE TABLE perguntas 
//               (
//                 idPergunta INTEGER PRIMARY KEY,
//                 categoria TEXT,
//                 pergunta TEXT,
//                 resposta TEXT,
//                 hipoteses TEXT
//               )
//               ''';
//           db.execute(sql);
//         },
//       );
//     }
//   }

//   @override
//   Future<bool> addPergunta(PerguntaModel pergunta) async {
//     await openDataBase();
//     var result = await db.insert('perguntas', pergunta.toMap());
//     if (result < 0)
//       return false;
//     else
//       return true;
//   }

//   @override
//   Future<PerguntaModel> getPergunta(int idPergunta) async {
//     await openDataBase();
//     var result = await db.query('perguntas');
//     try {
//       if (result.isNotEmpty) {
//         var perguntas = result.map((e) => PerguntaModel.fromMap(e)).toList();
//         var rawPergunta = perguntas.first;
//         return rawPergunta;
//       } else {
//         return null;
//       }
//     } catch (e) {
//       return null;
//     }
//   }

//   @override
//   Future<List<PerguntaModel>> getPerguntas() async {
//     var result = await db.query('perguntas');
//     try {
//       if (result.isNotEmpty) {
//         var perguntas = result.map((e) => PerguntaModel.fromMap(e)).toList();
//         return perguntas;
//       } else {
//         return null;
//       }
//     } catch (e) {
//       return null;
//     }
//   }
// }
