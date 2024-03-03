import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/theme/theme_bloc.dart';
import 'package:flutter_application_1/core/style/dark_theme.dart';
import 'package:flutter_application_1/core/style/light_theme.dart';
import 'package:flutter_application_1/core/ui/core_screen.dart';
import 'package:flutter_application_1/features/home/ui/home_screen.dart';
import 'package:flutter_application_1/features/profile/ui/profile_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const CoreScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (BuildContext context, GoRouterState state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: 'profile',
          builder: (BuildContext context, GoRouterState state) {
            return const ProfileScreen();
          },
        ),
      ],
    ),
  ],
);

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
              routerConfig: _router,
              debugShowCheckedModeBanner: false,
              theme: lightTheme,
              darkTheme: darkTheme,
              themeMode: state.theme,
              //home: CoreScreen(),
            ),
          );
        },
      ),
    );
  }
}
