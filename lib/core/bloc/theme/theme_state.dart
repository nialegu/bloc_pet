part of 'theme_bloc.dart';

@immutable
sealed class ThemeState {
  final ThemeMode theme;
  final bool switchValue;

  const ThemeState({required this.theme, required this.switchValue});
}

final class ThemeInitial extends ThemeState {
  const ThemeInitial() : super(theme: ThemeMode.system, switchValue: false) ;
}

final class LightThemeState extends ThemeState {
  const LightThemeState() : super(theme: ThemeMode.light, switchValue: false);
}

final class DarkThemeState extends ThemeState {
  const DarkThemeState() : super(theme: ThemeMode.dark, switchValue: true);
}



