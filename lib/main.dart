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
      routes: routes,

//      {
//        SplashScreen.id: (context) => SplashScreen(),
//        InputsPage.id: (context) => InputsPage(),
//        Map.id: (context) => Map(Map.latitude, Map.longitude),
//      },
      initialRoute: SplashScreen.id,
    );
  }
}

var routes = <String, WidgetBuilder>{
  SplashScreen.id: (BuildContext context) => SplashScreen(),
  InputsPage.id: (BuildContext context) => InputsPage(),
};
