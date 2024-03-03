import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/data/data_source/database.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';

part 'recepients_event.dart';
part 'recepients_state.dart';

final GetIt getIt = GetIt.instance;

class RecepientsBloc extends Bloc<RecepientsEvent, RecepientsState> {
  RecepientsBloc()
      : super(const RecepientsInitial(
          recepients: [],
        )) {
    on<AddRecepient>((event, emit) {
      print(emit);
    });
  }

  AppDatabase get db => getIt.get<AppDatabase>();

  Future<List<Recepient>> getRecepients() async {
    return await db.recepientsList;
  }

  @protected
  final controller = StreamController<RecepientsBloc>.broadcast();

  Stream<RecepientsBloc> get streamBloc => controller.stream;
}
