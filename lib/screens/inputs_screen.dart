import 'package:flutter/material.dart';
import 'package:I_found_a_ghost/screens/map_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:I_found_a_ghost/user_current_location.dart';

Position position;

class InputsPage extends StatefulWidget {
  static const String id = 'inputs_screen';

  @override
  _InputsPageState createState() => _InputsPageState();
}

class _InputsPageState extends State<InputsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    UserCurrentLocation.getCurrentUserLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Expanded(
                flex: 3,
                child: Form(
                  child: TextField(
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
              SizedBox(
                height: 20.0,
              ),
              RaisedButton(
                onPressed: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Map(
                              UserCurrentLocation.userLatitude,
                              UserCurrentLocation.userLongitude)));

                  UserCurrentLocation.getCurrentUserLocation();

                  //print(position);
                },
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
                    'Map',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
