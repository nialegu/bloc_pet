import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_application_1/core/data/entities/gift.dart';
import 'package:flutter_application_1/core/data/entities/plan.dart';
import 'package:flutter_application_1/core/data/entities/recepient.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

@DriftDatabase(
  tables: [
    Recepients,
    Gifts,
    Plans,
  ]
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super (_openConnection());

  Future<List<Recepient>> get recepientsList => select(recepients).get();

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