
import 'package:flutter/material.dart';

class Navigation {
  static push(BuildContext context, Widget to) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => to));
  }

  static pop(BuildContext context) {
    Navigator.pop(context);
  }
}