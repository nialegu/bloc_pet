import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/ui/core_floating_action_button.dart';
import 'package:go_router/go_router.dart';

import '/core/ui/core_appbar.dart';
import '/core/ui/core_bottombar.dart';

class CoreScreen extends StatelessWidget {
  const CoreScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCore(navigationShell: navigationShell),
      body: navigationShell,
      floatingActionButton: FloatingActionButtonCore(navigationShell: navigationShell),
      bottomNavigationBar:
          BottomNavigationBarCore(navigationShell: navigationShell),
    );
  }
}
