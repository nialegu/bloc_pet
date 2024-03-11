import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/bloc/theme/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final themeBloc = context.read<ThemeBloc>();

    return Center(
      child: Column(
        children: [
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return Switch(
                onChanged: (value) {
                  themeBloc.add(value ? DarkThemeEvent() : LightThemeEvent());
                },
                value: themeBloc.state.switchValue,
              );
            },
          ),
        ],
      ),
    );
  }
}
