import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:location/location.dart';
import 'package:geolocator/geolocator.dart';
import 'package:I_found_a_ghost/screens/inputs_screen.dart';

class Map extends StatefulWidget {
  static const String id = 'map_screen';
  static double longitude;
  static double latitude;
  //Map({@required this.latitude, @required this.longitude});
  Map(double latitude, double longitude) {
    Map.latitude ??= latitude;
    Map.longitude ??= longitude;
  }

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(Map.latitude, Map.longitude),
      tilt: 59.440717697143555,
      zoom: 190.151926040649414);

  @override
  Widget build(BuildContext context) {
    List<Marker> allMarker = [
      Marker(
        markerId: MarkerId('firstMarker'),
        position: LatLng(Map.latitude, Map.longitude),
      ),
    ];
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
      body: GoogleMap(
        markers: Set.from(allMarker),
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(
            target: LatLng(Map.latitude, Map.longitude), zoom: 14.4746),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
//      floatingActionButton: FloatingActionButton.extended(
//        onPressed: _goToTheLake,
//        label: Text('To the lake!'),
//        icon: Icon(Icons.directions_boat),
//      ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
