import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(1.3333329950910349, 103.77608679741938),
    zoom: 14.4746,
  );

  static const CameraPosition _kBA = CameraPosition(
    bearing: 192.8334901395799,
    target: LatLng(1.332144322489872, 103.77598139205635),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  static const CameraPosition _kDE = CameraPosition(
    target: LatLng(1.3337844600620636, 103.77415922226893),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  static const CameraPosition _kSOE = CameraPosition(
    target: LatLng(1.3340226741763301, 103.77565149141363),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  static const CameraPosition _kFMS = CameraPosition(
    target: LatLng(1.3319515019488277, 103.77529441102756),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  static const CameraPosition _kHS = CameraPosition(
    target: LatLng(1.3305055434883808, 103.77446832440397),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  static const CameraPosition _kHSS = CameraPosition(
    target: LatLng(1.3319474174172765, 103.77502069371673),
    tilt: 59.440717697143555,
    zoom: 19.151926040649414,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Row(
            children: [
              _buildFloatingActionButton('School of BA', _kBA),
              SizedBox(width: 16),
              _buildFloatingActionButton('School of DE', _kDE),
              SizedBox(width: 16),
              _buildFloatingActionButton('School of SOE', _kSOE),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              _buildFloatingActionButton('School of FMS', _kFMS),
              SizedBox(width: 16),
              _buildFloatingActionButton('School of HS', _kHS),
              SizedBox(width: 16),
              _buildFloatingActionButton('School of HSS', _kHSS),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton(String label, CameraPosition location) {
    return Expanded(
      child: FloatingActionButton.extended(
        onPressed: () {
          _goToLocation(location);
        },
        label: Text(label),
        icon: Icon(Icons.place_outlined),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
    );
  }

  Future<void> _goToLocation(CameraPosition location) async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(location));
  }
}
