import 'package:I_found_a_ghost/screens/splash_screen.dart';
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
      home: SplashScreen(),
      routes: {
        SplashScreen.id: (BuildContext context) => SplashScreen(),
        InputsPage.id: (BuildContext context) => InputsPage(),
        Map.id: (BuildContext context) => Map(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}
