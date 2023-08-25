import 'dart:io';

import 'package:adbhut_s_application4/data/models/employeeModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
   static late final Database _database;

   Future<Database> get database async {
    if (_database.isOpen) {
      return _database;
    }
    _database = await initDatabase();
    return _database;
  }
  Future initDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'employee.db');

    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        return db.execute(
          '''
          CREATE TABLE employee (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            role TEXT,
            date TEXT
          )
          ''',
        );
      },
    );
  }

  Future<void> insertEmployee(EmployeeModel employee) async {
    final db = await database;
    await db!.insert(
      'employee',
      employee.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<EmployeeModel>> getEmployee() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('employee');
    return List.generate(maps.length, (i) {
      return EmployeeModel(
        id: maps[i]['id'] as int?,
        name: maps[i]['name'] as String,
        role: maps[i]['role'] as String,
        date: maps[i]['date'] as String,
      );
    });
  }
}
