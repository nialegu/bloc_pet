import 'package:flutter/material.dart';

class AppBarCore extends StatelessWidget implements PreferredSizeWidget{
  const AppBarCore({super.key});

  @override
  Widget build(BuildContext context){
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(75);
}