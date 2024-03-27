// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

import 'package:location_tracking_app/business_logic/bloc/live_location/live_location_bloc.dart';

part 'google_maps_event.dart';
part 'google_maps_state.dart';

class GoogleMapsBloc extends Bloc<GoogleMapsEvent, GoogleMapsState> {
  final LiveLocationBloc liveLocatinBloc;
  GoogleMapsBloc({required this.liveLocatinBloc}) : super(GoogleMapsInitial()) {
    on<LocationUpdated>(_mapLocationUpdatedToState);
  }
  void _mapLocationUpdatedToState(LocationUpdated event, emit) {
    try {} catch (e) {}
  }
}
