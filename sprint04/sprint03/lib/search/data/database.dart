import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class DatabaseRepository {
  DatabaseRepository.privateConstructor();

  static final DatabaseRepository instance = DatabaseRepository.privateConstructor();

  final _databaseName = 'databasePlaces';
  final _databaseVersion = 1;

  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await _initDatabase();
    }
  }

  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path, version: _databaseVersion, onCreate: await onCreate);
  }

    //this.id = obj['placeId'];
    //this.destino = obj['placeName'];
    //this.pais = obj['placeCountry'];
    //this.valor = obj['placePrice'];
    //this.avaliacao = obj['placeRating'];
    //this.curtido = obj['placeIsLiked'];

  Future onCreate(Database db, int version) async {
    //await db.execute('''
      //CREATE TABLE place (
        //placeId INTEGER PRIMARY KEY AUTOINCREMENT,
        //placeName TEXT NOT NULL,
        //placeCountry TEXT NOT NULL,
        //placePrice REAL NOT NULL,
        //placeRating REAL NOT NULL,
        //placeIsLiked BOOLEAN NOT NULL CHECK (placeIsLiked IN (0, 1))
      //);
    //''');
    await db.execute('''
      CREATE TABLE "place" (
        "placeId"	INTEGER,
        "placeName"	TEXT NOT NULL,
        "placeCountry"	TEXT NOT NULL,
        "placePrice"	REAL NOT NULL,
        "placeRating"	REAL NOT NULL,
        "placeIsLiked"	TEXT NOT NULL,
        PRIMARY KEY("placeId" AUTOINCREMENT)
      );
    ''');

    await db.execute('''
      INSERT INTO place (placeName, placeCountry, placePrice, placeRating, placeIsLiked)
      VALUES
            ("Diamantina",         "Brasil", 9990.00, 4.5, "y"),
            ("Cancún",             "México", 3993.33, 4.9, "y"),
            ("Punta Cana",         "México", 9990.00, 3.4, "n"),
            ("Chapada Diamantina", "Brasil", 9990.00, 4.8, "n"),
            ("Los Angeles",        "EUA",    9990.00, 4.3, "y"),
            ("Geneva",             "Suíça",  9990.00, 3.9, "y"),
            ("Nova Delhi",         "Índia",  9990.00, 2.5, "y"),
            ("Moscow",             "Rússia",  9990.00, 4.9, "y"),
            ("Tel Aviv",           "Israel",  9990.00, 3.2, "y"),
            ("Florianópolis",      "Brasil", 9990.00, 4.5, "n");
          ''');
  }
}
