part of 'google_maps_bloc.dart';

sealed class GoogleMapsEvent extends Equatable {
  const GoogleMapsEvent();

  @override
  List<Object> get props => [];
}

class LocationUpdated extends GoogleMapsEvent {
  final Location location;

  const LocationUpdated({required this.location});
  @override
  List<Object> get props => [location];
}

class MapCreated extends GoogleMapsEvent {
  final Completer<GoogleMapController> controller;

  const MapCreated({required this.controller});
}
