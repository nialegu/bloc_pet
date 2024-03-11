import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/core/models/recipient_model.dart';
import 'package:meta/meta.dart';

part 'floating_button_event.dart';
part 'floating_button_state.dart';

class FloatingButtonBloc extends Bloc<FloatingButtonEvent, FloatingButtonState> {
  FloatingButtonBloc() : super(FloatingButtonInitial());

  @protected
  final controller = StreamController<RecipientModel>.broadcast();

  Stream<RecipientModel> get streamBloc => controller.stream;

  
}
