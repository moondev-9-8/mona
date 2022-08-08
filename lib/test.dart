import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'package:flutter_polyline_points/flutter_polyline_points.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Test(),
    );
  }

  @override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
}

class Test extends StatefulWidget {
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  late Position cl;
  late StreamSubscription<Position> ps;
  var lat;
  var long;
  CameraPosition? _kGooglePlex;
  Future getper() async {
    bool services;
    LocationPermission per;

    services = await Geolocator.isLocationServiceEnabled();
    if (services == false) {
      AwesomeDialog(
          context: context,
          title: "services",
          body: Text("location is not enabled"))
        ..show();
    }
    per = await Geolocator.checkPermission();
    print("=======================");
    print(per);
    print("=======================");
    return per;
  }

  Future<void> getlatANDlong() async {
    cl = await Geolocator.getCurrentPosition().then((value) => value);
    lat = cl.latitude;
    long = cl.longitude;
    _kGooglePlex = CameraPosition(
      target: LatLng(lat, long),
      zoom: 10.4746,
    );
    mymarker.add(Marker(
      markerId: MarkerId("1"),
      position: LatLng(lat, long),
    ));
    setState(() {});
  }

  @override
  void initState() {
    ps = Geolocator.getPositionStream().listen((Position? position) {
      changemarker(position!.latitude, position.longitude);
    });
    getper();
    getlatANDlong();
    super.initState();
  }

  late GoogleMapController gmc;

  Set<Marker> mymarker = {};
  changemarker(newlat, newlong) {
    mymarker.clear(); //يكون في ماركر واحد
    mymarker.add(
        Marker(markerId: MarkerId("2"), position: LatLng(newlat, newlong)));
    gmc.animateCamera(CameraUpdate.newLatLng(LatLng(newlat, newlong)));
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("future"),
      ),
      body: Column(
        children: [
          _kGooglePlex == null
              ? CircularProgressIndicator()
              : Container(
                  height: 500,
                  width: 400,
                  color: Colors.amber,
                  margin: EdgeInsets.all(10),
                  child: GoogleMap(
                    onTap: (LatLng) {},
                    markers: mymarker,
                    mapType: MapType.satellite,
                    initialCameraPosition: _kGooglePlex!, //! error trigger
                    onMapCreated: (GoogleMapController controller) {
                      gmc = controller;
                    },
                  ),
                ),
          RaisedButton(
            onPressed: () async {
              LatLng latLng = LatLng(21.422006, 39.815552);
              //3// var xy = await gmc.getZoomLevel();
              // print(xy);
              //2
              var xy = await gmc.getLatLng(ScreenCoordinate(x: 200, y: 200));
              print(xy);
              //1
              //   gmc.moveCamera(CameraUpdate.newCameraPosition(CameraPosition(
              // target: latLng, zoom: 10, tilt: 45, bearing: 45)));
            },
            child: Text("go to makkah"),
          )
        ],
      ),
    );
  }
}
//AIzaSyDn_nnHdIwciGzug4VeSdvVgFqrK8pkyro key
//21.389659  39.810842
//  Marker(
//         markerId: MarkerId("2"),
//         infoWindow: InfoWindow(
//             title: "2",
//             onTap: () {
//               print("tap info marker");
//             }),
        // position: LatLng(21.697343083999396, 39.87941153347492)),