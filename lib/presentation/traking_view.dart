import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../business_logic/bloc/google_maps/google_maps_bloc.dart';

class TrackingView extends StatefulWidget {
  const TrackingView({super.key});

  @override
  State<TrackingView> createState() => _TrackingViewState();
}

class _TrackingViewState extends State<TrackingView> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();
  static const LatLng sourceLocation =
      LatLng(10.807204360157058, 106.6642670386541);

  static const LatLng destination =
      LatLng(10.800663342505565, 106.66056926723962);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tracking'),
        ),
        body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: sourceLocation, zoom: 14.5))
        // body: BlocConsumer<GoogleMapsBloc, GoogleMapsState>(
        //   listener: (context, state) {
        //     // TODO: implement listener
        //   },
        //   builder: (context, state) {
        //     if (state is GoogleMapsSuccess) return const Text('Location');

        //     return const CircularProgressIndicator();
        //   },
        // ),
        );
  }
}
