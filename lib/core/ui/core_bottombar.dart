import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationBarCore extends StatelessWidget {
  const BottomNavigationBarCore({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: _bottomNavigationBarItems,
      currentIndex: navigationShell.currentIndex,
      onTap: (index) => navigationShell.goBranch(
        index,
        initialLocation: index == navigationShell.currentIndex,
      ),
    );
  }
}

List<BottomNavigationBarItem> get _bottomNavigationBarItems => [
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: "Recipients",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.add_box),
        label: "Gifts",
      ),
    ];
