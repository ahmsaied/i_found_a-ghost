import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
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
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'What! tell me more ',
                      border: const OutlineInputBorder(),
                      helperText: 'Awsome!',
                    ),
                    maxLength: 500,
                    autocorrect: true,
                    style: TextStyle(
                        //backgroundColor: Colors.white,
                        color: Colors.blueGrey[800]),
                  ),
                ),
              ),
              RaisedButton(
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
                  child: const Text('Submit', style: TextStyle(fontSize: 20)),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
