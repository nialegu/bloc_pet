import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_application_1/core/data/entities/gift.dart';
import 'package:flutter_application_1/core/data/entities/plan.dart';
import 'package:flutter_application_1/core/data/entities/recepient.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DriftDatabase(tables: [
  Recipients,
  Gifts,
  Plans,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  Future<List<Recipient>> get recipientsList async =>
      await select(recipients).get();

  Future<bool> addRecipient(String name, String surname, DateTime birthday) async {
    try {
      await into(recipients).insert(
          RecipientsCompanion(name: Value(name), surname: Value(surname), birthday: Value(birthday),));
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> deleteRecipient(int id) async {
    try {
      await (delete(recipients)..where((item) => item.id.equals(id))).go();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    return NativeDatabase.createInBackground(file);
  });
}
