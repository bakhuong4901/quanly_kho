import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
class DBProvider {
  DBProvider._();

  static final DBProvider db = DBProvider._();
  static Database? _database;

  Future<Database> get database async {
    if(_database == null){
      _database = await initDB();
      return _database!;
    }
    return _database!;
  }


  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "quanlykho.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
          await db.execute("CREATE TABLE product ("
              "id INTEGER PRIMARY KEY autoincrement,"
              "productName TEXT,"
              "price INTEGER,"
              "image TEXT,"
              "detail TEXT"
              ")");
        });
  }

}
