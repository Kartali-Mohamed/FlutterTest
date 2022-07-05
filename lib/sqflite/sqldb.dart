import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDb {
  Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  Future<Database> initialDb() async {
    String dbpath = await getDatabasesPath();
    String path = join(dbpath, "sqflite.db");
    Database mydb = await openDatabase(path,
        onCreate: _onCreate, version: 1, onUpgrade: _onUpgrade);
    return mydb;
  }

  Future<void> _onCreate(Database db, int version) async {
    /*await db.execute('''
      CREATE TABLE "notes" (
        "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        "note" TEXT NOT NULL,
        "title" TEXT NOT NULL
      )
    ''');*/

    // For Create Multi Table
    Batch batch = db.batch();

    // Table one
    batch.execute('''
      CREATE TABLE "notes" (
        "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        "note" TEXT NOT NULL,
        "title" TEXT NOT NULL
      )
    ''');
    // Table Two
    batch.execute('''
      CREATE TABLE "person" (
        "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
        "name" TEXT NOT NULL,
        "age" INTEGER NOT NULL
      )
    ''');

    await batch.commit();
  }

  Future<void> _onUpgrade(Database db, int oldversion, int newversion) async {
    await db.execute("ALTER TABLE notes ADD COLUMN color TEXT");
  }

  // Select Data
  Future<List<Map>> readData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  // Insert Data
  Future<int> insertData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

  // Update Data
  Future<int> updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }

  // Delete Data
  Future<int> deleteData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }

  // ************************************ //
  // Shortcuts Method SQFLITE

  // Select Data
  Future<List<Map>> read(String table) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.query(table);
    return response;
  }

  // Insert Data
  Future<int> insert(String table, Map<String, Object?> values) async {
    Database? mydb = await db;
    int response = await mydb!.insert(table, values);
    return response;
  }

  // Update Data
  Future<int> update(
      String table, Map<String, Object?> values, String? mywhere) async {
    Database? mydb = await db;
    int response = await mydb!.update(table, values, where: mywhere);
    return response;
  }

  // Delete Data
  Future<int> delete(String table, String? mywhere) async {
    Database? mydb = await db;
    int response = await mydb!.delete(table, where: mywhere);
    return response;
  }
}
