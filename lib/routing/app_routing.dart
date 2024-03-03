import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '/core/ui/core_screen.dart';
import '/features/home/ui/home_screen.dart';
import '/features/recepients/ui/recepients_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: "/home",
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return CoreScreen(
          navigationShell: navigationShell,
        );
      },
      branches: [
        StatefulShellBranch(
          initialLocation: '/home',
          routes: [
            GoRoute(
              path: '/home',
              builder: (BuildContext context, GoRouterState state) {
                return const HomeScreen();
              },
              routes: List.empty(),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: '/recipients',
          routes: [
            GoRoute(
              path: '/recipients',
              builder: (BuildContext context, GoRouterState state) {
                return const RecipientsScreen();
              },
              routes: List.empty(),
            ),
          ],
        ),
        StatefulShellBranch(
          initialLocation: '/gifts',
          routes: [
            GoRoute(
              path: '/gifts',
              builder: (BuildContext context, GoRouterState state) {
                return const RecipientsScreen();
              },
              routes: List.empty(),
            ),
          ],
        )
      ],
    ),
  ],
);
