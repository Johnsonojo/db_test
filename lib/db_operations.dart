import 'package:db_test/user.dart';
import 'package:sqflite/sqflite.dart';

class DBOperations {
  final Database _database;

  DBOperations(this._database);

  Future<void> insertRecord(
    String firstName,
    String lastName,
    String email,
    String password,
  ) async {
    Map<String, Object> userMap = {
      "id": DateTime.now().millisecond,
      "firstName": firstName,
      "lastName": lastName,
      "email": email,
      "password": password,
    };

    await _database.insert(
      'users',
      userMap,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<User>> users() async {
    final List<Map<String, dynamic>> maps = await _database.query('users');
    return List.generate(maps.length, (i) {
      return User(
        id: maps[i]['id'],
        firstName: maps[i]['firstName'],
        lastName: maps[i]['lastName'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }
}
