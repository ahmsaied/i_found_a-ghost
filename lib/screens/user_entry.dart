import 'package:flutter/material.dart';

class UserEntery {
  static Widget userEntry() {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
          child: Text('Tell us !'),
        )),
        Padding(
          padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
          child: SizedBox(
            height: 20.0,
            child: Divider(
              color: Colors.blueGrey.shade100,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          child: TextField(
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              hintText: 'What! tell me more ',
              border: const OutlineInputBorder(),
              helperText: 'Awsome!',
              //helperStyle: TextStyle(fontFamily: "Bauhaus"),
            ),
            maxLength: 500,
            autocorrect: true,
            style: TextStyle(
                //backgroundColor: Colors.white,
                color: Colors.blueGrey[800]),
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
            child: const Text(
              'Submit',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
