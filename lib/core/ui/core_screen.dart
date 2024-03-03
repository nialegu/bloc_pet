import 'package:flutter/material.dart';

import '/core/ui/core_appbar.dart';
import '/core/ui/core_body.dart';
import '/core/ui/core_bottombar.dart';

class CoreScreen extends StatelessWidget {
  const CoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      appBar: AppBarCore(),
      body: BodyCore(),
      bottomNavigationBar: BottomNavigationBarCore(),
    );
  }
}
