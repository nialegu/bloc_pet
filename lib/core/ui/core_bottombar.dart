import 'package:flutter/material.dart';

class BottomNavigationBarCore extends StatefulWidget {
  const BottomNavigationBarCore({super.key});

  @override
  State<StatefulWidget> createState() => _BottomBarCore();
}

class _BottomBarCore extends State<BottomNavigationBarCore> {
  int currentIndex = 0;

  void selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: "Home",
          activeIcon: Icon(Icons.access_alarm),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.abc),
          label: "Profile",
          activeIcon: Icon(Icons.access_alarm),
        ),
      ],
      currentIndex: currentIndex,
      onTap: (index) {
        selectPage(index);
      },
    );
  }
}
