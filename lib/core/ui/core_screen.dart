import 'package:flutter/material.dart';
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
      bottomNavigationBar: BottomNavigationBarCore(navigationShell: navigationShell),
    );
  }
}
