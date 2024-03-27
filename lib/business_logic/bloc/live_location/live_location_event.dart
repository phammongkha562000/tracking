part of 'live_location_bloc.dart';

sealed class LiveLocationEvent extends Equatable {
  const LiveLocationEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends LiveLocationEvent {}

class LocationChanged extends LiveLocationEvent {
  final Location location;

  const LocationChanged({required this.location});
  @override
  List<Object> get props => [location];
}
