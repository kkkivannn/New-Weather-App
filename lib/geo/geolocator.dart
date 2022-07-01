// import 'package:geolocator/geolocator.dart';
// import 'package:flutter/material.dart';

// class GeolocationExampleState extends State {
//   Geolocator? _geolocator;
//   Position? _position;

//   @override
//   void initState() {
//     super.initState();
//     _geolocator = Geolocator();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Flutter Geolocation Example'),
//       ),
//       body: Center(
//           child: Text(
//               'Latitude: ${_position != null ? _position?.latitude.toString() : '0'},'
//               ' Longitude: ${_position != null ? _position?.longitude.toString() : '0'}')),
//     );
//   }
// }

// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   GeolocationExampleState createState() => new GeolocationExampleState();
// }
