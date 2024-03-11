import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/bloc/config_bloc.dart';
import 'package:flutter_application_1/core/data/data_source/database.dart';
import 'package:meta/meta.dart';

part 'recepients_event.dart';
part 'recepients_state.dart';

class RecipientsBloc extends Bloc<RecipientsEvent, RecipientsState> {
  RecipientsBloc() : super(RecepientsInitial());
  
  @protected
  final controller = StreamController<List<Recipient>>.broadcast();

  Stream<List<Recipient>> get streamBloc => controller.stream;

  AppDatabase get db => getIt.get<AppDatabase>();

  Future<void> updateRecipients() async {
    controller.add(await db.recipientsList);
  }

  Future<bool> addRecipient(String name, String surname, DateTime birthday) async {
    final response = await db.addRecipient(name, surname, birthday);

    if (response) {
      updateRecipients();
      return true;
    }

    return false;
  }

  Future<bool> deleteRecipient(int id) async {
    final response = await db.deleteRecipient(id);

    if (response) {
      updateRecipients();
      return true;
    }

    return false;
  }

}
