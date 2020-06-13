import 'package:I_found_a_ghost/bloc/user_current_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:I_found_a_ghost/screens/user_entry.dart';

class Map extends StatefulWidget {
  static const String id = 'map_screen';
//  double longitude;
//  double latitude;
//  Map({this.latitude, this.longitude});
////  Map(double latitude, double longitude) {
////    Map.latitude ??= latitude;
////    Map.longitude ??= longitude;
//  }

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    List<Marker> allMarker = [
      Marker(
        markerId: MarkerId('firstMarker'),
        position: LatLng(UserCurrentLocation.userLatitude,
            UserCurrentLocation.userLongitude),
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
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: GoogleMap(
                markers: Set.from(allMarker),
                mapType: MapType.hybrid,
                initialCameraPosition: CameraPosition(
                    target: LatLng(UserCurrentLocation.userLatitude,
                        UserCurrentLocation.userLongitude),
                    zoom: 80.4746),
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            DraggableScrollableSheet(
              expand: true,
              initialChildSize: 0.4,
              minChildSize: 0.2,
              maxChildSize: 0.8,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.white,
                  ),
                  //child: userEntry(),
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      controller: scrollController,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return UserEntery.userEntry();
                      }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

//  Widget cardsWidget(itemIndex) => Container(
//        margin: EdgeInsets.all(24.0),
//        decoration: BoxDecoration(
//          color: Color.fromRGBO(250, 124, 107, 1),
//          borderRadius: BorderRadius.all(
//            Radius.circular(20.0),
//          ),
//        ),
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceAround,
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[],
//        ),
//      );

}
