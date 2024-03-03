import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(const ThemeInitial()) {
    
    on<DarkThemeEvent>((event, emit) {
      emit(const DarkThemeState());
    });

    on<LightThemeEvent>((event, emit) {
      emit(const LightThemeState());
    });
  }
}
