import 'package:drift/drift.dart';

class Gifts extends Table{
  IntColumn get id => integer()();
  TextColumn get name => text()();
  RealColumn get price => real()();
}