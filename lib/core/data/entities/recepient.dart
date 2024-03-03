import 'package:drift/drift.dart';

class Recepients extends Table{
  IntColumn get id => integer()();
  TextColumn get name => text()();
  TextColumn get surname => text()();
}