import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'form_recipient_bloc_event.dart';
part 'form_recipient_bloc_state.dart';

class FormRecipientBlocBloc extends Bloc<FormRecipientBlocEvent, FormRecipientBlocState> {
  FormRecipientBlocBloc() : super(FormRecipientBlocInitial());

  @protected
  final controller = StreamController<bool>.broadcast();

  Stream<bool> get streamBloc => controller.stream;
}
