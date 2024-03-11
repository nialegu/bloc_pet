import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/bloc/theme/theme_bloc.dart';
import 'package:flutter_application_1/core/style/dark_theme.dart';
import 'package:flutter_application_1/core/style/light_theme.dart';
import 'package:flutter_application_1/routing/app_routing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return Material(
            child: MaterialApp.router(
              routerConfig: router,
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: state.theme,
            ),
          );
        },
      ),
    );
  }
}
