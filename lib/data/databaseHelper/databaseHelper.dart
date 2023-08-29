import 'dart:io';

import 'package:adbhut_s_application4/data/models/deletedEmployeeModel.dart';
import 'package:adbhut_s_application4/data/models/employeeModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static Database? _database;


Future<Database> get database async {
  if (_database != null) {
    return _database!;
  }
  await initDatabase();
  return _database!;
}


Future<void> initDatabase() async {
  Directory directory = await getApplicationDocumentsDirectory();
  String path = join(directory.path, 'employee.db');

  _database = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) {
      return createTables(db);
    },
  );
}

  Future<void> createTables(Database db) async {
    await db.execute('''
    CREATE TABLE IF NOT EXISTS employee (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name TEXT,
      role TEXT,
      date TEXT
    )
  ''');

    await db.execute('''
    CREATE TABLE IF NOT EXISTS deleted_employee (
      id INTEGER PRIMARY KEY,
      name TEXT,
      role TEXT,
      startDate TEXT,
      endDate TEXT
    )
  ''');
  }

  Future<void> insertEmployee(EmployeeModel employee) async {
    final db = await database;
    await db.insert(
      'employee',
      employee.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> insertDeletedEmployee(DeletedEmployeeModel deletedEmployee) async {
    final db = await database;
    await db.insert(
      'deleted_employee',
      deletedEmployee.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updateEmployee(int id, EmployeeModel employee) async {
  final db = await database;

  await db.update(
    'employee',
    employee.toMap(),
    where: 'id = ?',
    whereArgs: [id],
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

  Future<List<DeletedEmployeeModel>> getDeletedEmployee() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('deleted_employee');
    return List.generate(maps.length, (i) {
      return DeletedEmployeeModel(
        id: maps[i]['id'] as int?,
        name: maps[i]['name'] as String,
        role: maps[i]['role'] as String,
        startDate: maps[i]['startDate'] as String,
        endDate: maps[i]['endDate'] as String,
      );
    });
  }

  Future<void> deleteItem(int id) async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'employee.db');
    final db = await openDatabase(path);
    await db.delete('employee', where: 'id = ?', whereArgs: [id]);
  }
}
