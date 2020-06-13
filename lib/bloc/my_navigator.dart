import 'package:flutter/material.dart';
import 'package:I_found_a_ghost/screens/inputs_screen.dart';
import 'package:I_found_a_ghost/screens/map_screen.dart';

class MyNavigator {
  static void goToMap(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => Map()),
    );
  }

  static void goToInputPage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => InputsPage()),
    );
  }
}
