import 'package:flutter/material.dart';
import 'package:flutter_application_1/app.dart';

import 'di_container.dart' as di;

void main() async {
  runApp(const MyApp());

  await di.init();
}
