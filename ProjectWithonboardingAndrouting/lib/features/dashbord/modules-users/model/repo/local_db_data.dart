import 'dart:ui';

//import 'package:frist_pages/features/dashbord/modules/model/repo/parent_data.dart';
//import 'package:frist_pages/features/dashbord/modules/model/userModel.dart';
//import 'package:frist_pages/features/auth/Users/model/userModel.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/repo/parent_data.dart';
import 'package:frist_pages/features/dashbord/modules-users/model/userModel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseRepo extends parentRepo {
  DatabaseRepo._init();
  static DatabaseRepo? _singleoneobject;
  static late Database _database;

  static Future<DatabaseRepo> get instance async {
    if (_singleoneobject == null) {
      await _initDatabase();
      _singleoneobject = DatabaseRepo._init();
    }
    return _singleoneobject!;
  }

  static Future<void> _initDatabase() async {
    final databasepath = await getDatabasesPath();

    final Path = join(databasepath, 'user.db');
    _database = await openDatabase(
      Path,
      version: 1,
      onCreate: _createTables,
    );
  }

  static Future<void> _createTables(Database db, _) async {
    await db.execute("""
  CREATE TABLE user( 
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  address TEXT
    )
""");
  }

  @override
  Future<void> delete({required Comparable<num> id}) async {
    await _database.delete('user', where: 'id=?', whereArgs: [id]);
  await _database.delete('user', where: 'id=?', whereArgs: [id]);
  }

  @override
  Future<List<UserModel>> fetch() async {
    return (await _database.query('user'))
        .map((e) => UserModel.fromJson(e))
        .toList();

  }

  @override
  Future<void> insert({required String name, String? address}) async {
  await _database.insert('user', {'name': name, 'address': address});
  }
}
