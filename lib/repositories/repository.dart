import 'package:sqflite/sqflite.dart';
import 'package:todo_app/repositories/database_connection.dart';

class Repository {
  late DatabaseConnection _databaseConnection;

  Repository() {
    _databaseConnection = DatabaseConnection();
  }

  static late Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _databaseConnection.setDatabase();
    return _database;
  }

  //Inserting data to the Table
  insertData(table, data) async {
    var connection = await database;
    return await connection.insert(table, data);
  }

  // Reading data from the Table
  readData(table) async {
    var connection = await database;
    return await connection.query(table);
  }
}
