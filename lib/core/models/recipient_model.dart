import 'package:drift/drift.dart';
import 'package:flutter_application_1/core/data/data_source/database.dart';

class RecipientModel {
  final String? _name;
  final String? _surname;
  final DateTime? _birthday;

  RecipientModel(this._name, this._surname, this._birthday);

  String get name => _name ?? '';
  String get surname => _surname ?? '';
  DateTime get birthday => _birthday ?? DateTime.now();

  RecipientModel fromRecipient(Recipient recipient){
    return RecipientModel(
      recipient.name,
      recipient.surname,
      recipient.birthday,
    );
  }

  RecipientsCompanion toRecipient(){
    return RecipientsCompanion(
      name: Value(name),
      surname: Value(surname),
      birthday: Value(birthday),
    );
  }
}