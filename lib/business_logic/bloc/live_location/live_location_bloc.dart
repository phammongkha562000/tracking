import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:location/location.dart';

part 'live_location_event.dart';
part 'live_location_state.dart';

class LiveLocationBloc extends Bloc<LiveLocationEvent, LiveLocationState> {
  final Location location;
  LiveLocationBloc({required this.location}) : super(LiveLocationInitial()) {
    on<AppStarted>(_mapAppStartedToState);
    on<LocationChanged>(_mapLocationChangedToState);
  }
  Future<void> _mapAppStartedToState(AppStarted event, emit) async {
    try {
      if (!(await location.serviceEnabled())) {
        final serviceEnabled = await location.requestService();

        if (!serviceEnabled) {
          emit(LiveLocationFailure());
          return;
        }
        final permission = await location.hasPermission();
        if (permission == PermissionStatus.denied) {
          final permission = await location.requestPermission();

          if (permission != PermissionStatus.granted) {
            emit(LiveLocationFailure());

            return;
          }
        }

        emit(const LiveLocationSuccess());
      }
    } catch (e) {
      emit(LiveLocationFailure());
    }
  }

  void _mapLocationChangedToState(LocationChanged event, emit) {
    try {
      emit(LiveLocationSuccess(location: event.location));
    } catch (e) {
      emit(LiveLocationFailure());
    }
  }
}
