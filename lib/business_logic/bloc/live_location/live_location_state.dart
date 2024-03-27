part of 'live_location_bloc.dart';

sealed class LiveLocationState extends Equatable {
  const LiveLocationState();

  @override
  List<Object?> get props => [];
}

final class LiveLocationInitial extends LiveLocationState {}

final class LiveLocationLoading extends LiveLocationState {}

final class LiveLocationSuccess extends LiveLocationState {
  final Location? location;

  const LiveLocationSuccess({this.location});
  @override
  List<Object?> get props => [location];
}

final class LiveLocationFailure extends LiveLocationState {}
