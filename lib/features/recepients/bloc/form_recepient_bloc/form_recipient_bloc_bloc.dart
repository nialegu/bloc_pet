import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/bloc/config_bloc.dart';
import 'package:flutter_application_1/features/recepients/bloc/recepients_bloc/recepients_bloc.dart';
import 'package:meta/meta.dart';

part 'form_recipient_bloc_event.dart';
part 'form_recipient_bloc_state.dart';

class FormRecipientBlocBloc extends Bloc<FormRecipientBlocEvent, FormRecipientBlocState> {
  FormRecipientBlocBloc() : super(FormRecipientBlocInitial());

  @protected
  final controller = StreamController<String>.broadcast();

  Stream<String> get streamBloc => controller.stream;

  final recipientBloc = getIt.get<RecipientsBloc>();

  void getValuesForAddingRecepient(){
  }
}
