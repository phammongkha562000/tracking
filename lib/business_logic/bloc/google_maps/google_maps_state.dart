part of 'google_maps_bloc.dart';

sealed class GoogleMapsState extends Equatable {
  const GoogleMapsState();

  @override
  List<Object> get props => [];
}

final class GoogleMapsInitial extends GoogleMapsState {}

final class GoogleMapsLoading extends GoogleMapsState {}

final class GoogleMapsSuccess extends GoogleMapsState {
  final Location location;

  const GoogleMapsSuccess({required this.location});
  @override
  List<Object> get props => [location];
}

final class GoogleMapsFailure extends GoogleMapsState {}
