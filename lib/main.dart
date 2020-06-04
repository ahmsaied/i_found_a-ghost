import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:I_found_a_ghost/screens/inputs_screen.dart';
import 'package:I_found_a_ghost/screens/map_screen.dart';

void main() {
  runApp(GhostApp());
}

class GhostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputsPage(),
      routes: {
        InputsPage.id: (context) => InputsPage(),
        Map.id: (context) => Map(),
      },
      initialRoute: InputsPage.id,
    );
  }
}
