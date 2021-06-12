import 'package:concierge/features/concierge/page/ConciergePage.dart';
import 'package:concierge/style/AssetColors.dart';
import 'package:flutter/material.dart';

import 'features/home/page/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concierge',
      theme: ThemeData(
        primarySwatch: AssetColors.primaryColor,
        accentColor: AssetColors.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: ConciergePage(),
    );
  }
}