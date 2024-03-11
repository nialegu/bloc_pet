import 'package:drift/drift.dart';

class Recipients extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get surname => text()();
  DateTimeColumn get birthday => dateTime()();
}