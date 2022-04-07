import 'package:db_test/app_database.dart';
import 'package:db_test/db_operations.dart';
import 'package:db_test/my_app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final db = await AppDatabase().initDatabase();
  // DBOperations(db).insertRecord("Johnson", "Ojo");

  runApp(const MyApp());
}
