import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GhostApp());
}

class GhostApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow[200],
          title: Center(
            child: Text(
              "I found a ghost",
              style: TextStyle(color: Colors.blueGrey[800]),
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
//                Container(
//                  margin: EdgeInsets.all(10.0),
//                  //color: Colors.white,
//                  child: Center(
//                    child: TextField(
//                      decoration: InputDecoration(
//                        hintText: 'What! tell me more ',
//                        border: const OutlineInputBorder(),
//                        helperText: 'Awsome!',
//                        helperStyle: TextStyle(fontFamily: "Bauhaus"),
//                      ),
//                      maxLength: 500,
//                      autocorrect: true,
//                      style: TextStyle(
//                          //backgroundColor: Colors.white,
//                          color: Colors.blueGrey[800]),
//                    ),
//                  ),
//                ),

                Expanded(
                  flex: 2,
                  child: Form(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'What! tell me more ',
                        border: const OutlineInputBorder(),
                        helperText: 'Awsome!',
                        helperStyle: TextStyle(fontFamily: "Bauhaus"),
                      ),
                      maxLength: 500,
                      autocorrect: true,
                      style: TextStyle(
                          //backgroundColor: Colors.white,
                          color: Colors.blueGrey[800]),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
                  child: SizedBox(
                    height: 20.0,
                    child: Divider(
                      color: Colors.blueGrey.shade100,
                    ),
                  ),
                ),

                Expanded(
                  child: RaisedButton(
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: <Color>[
                            Color(0xFF0D47A1),
                            Color(0xFF1976D2),
                            Color(0xFF42A5F5),
                          ],
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
