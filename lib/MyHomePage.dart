import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  LatLng myCurrentLocation = const LatLng(28.533530, 77.343260);
  late GoogleMapController googleMapController;
  Set<Marker> marker = {
  };

  // BitmapDescriptor customIcon = BitmapDescriptor.defaultMarker;
  // @override
  // void initState() {
  //   customMarker();
  //   super.initState();
  // }
  //
  // void customMarker(){
  //   BitmapDescriptor.asset( const ImageConfiguration(), "assets/finmarker.png",
  //   ).then((icon){
  //     setState(() {
  //       customIcon = icon;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationButtonEnabled: false,
        markers: marker,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },
        initialCameraPosition: CameraPosition(
            target: myCurrentLocation, zoom: 15),
        // markers: {
        // Marker(
        //   markerId: const MarkerId("Mrker Id"),
        //   position: myCurrentLocation,
        //   draggable: true,
        //   onDragEnd: (value){},
        //   infoWindow: const InfoWindow(
        //     title: "Title of the marker",
        //     snippet: "more info about the marker",
        //   ),
        //   icon: customIcon,
        // ),
        // },

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(Icons.my_location, size: 30,),
        onPressed: () async {
          Position position = await currentPosition();
          googleMapController.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
              zoom: 14,
              target: LatLng(position.latitude, position.longitude),),),
          );
          marker.clear();
          marker.add(
            Marker(
              markerId: const MarkerId ("This is my location"),
              position: LatLng((position.latitude), position.longitude)
            ),
          );
          setState(() {

          });
        },
      ),
    );

  }


  Future<Position> currentPosition() async {
    bool serviceEnable;
    LocationPermission permission;
    serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      return Future.error("Location services are disable");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return Future.error("Location permission denied");
      }
    }
      if (permission == LocationPermission.deniedForever) {
        return Future.error("Location denied permanently");
      }
      Position position = await Geolocator.getCurrentPosition();
      return position;
    }
}
