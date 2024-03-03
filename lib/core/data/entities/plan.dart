import 'package:drift/drift.dart';
import 'package:flutter_application_1/core/data/data_source/database.dart';

class Plans extends Table{
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get name => dateTime()();
  TextColumn get holiday => text()();
  TextColumn get recepients => text().map(const RecepientsConverter())();
  TextColumn get gifts => text().map(const GiftsConverter())();
}

class RecepientsConverter extends TypeConverter<List<Recepient>?, String> {
  const RecepientsConverter();

  @override
  List<Recepient> fromSql(String fromDb){
    return (fromDb as Iterable).map((e) => Recepient.fromJson(e)).toList();
  }

  @override
  String toSql(List<Recepient>? value) {
    return value.toString();
  }
}

class GiftsConverter extends TypeConverter<List<Gift>?, String> {
  const GiftsConverter();

  @override
  List<Gift> fromSql(String fromDb){
    return (fromDb as Iterable).map((e) => Gift.fromJson(e)).toList();
  }

  @override
  String toSql(List<Gift>? value){
    return value.toString();
  }
}
