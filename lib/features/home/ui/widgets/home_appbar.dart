import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      foregroundColor: Colors.white,
      toolbarHeight: 100,
      title: const Text("AppBar"),
      centerTitle: true,
    );
  }
}
