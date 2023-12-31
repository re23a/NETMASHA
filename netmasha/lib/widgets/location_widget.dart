import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget(
      {super.key, required this.latitude, required this.longitude});
  final double latitude;
  final double longitude;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      initialCameraPosition:
          CameraPosition(target: LatLng(latitude, longitude), zoom: 15),
    );
  }
}
