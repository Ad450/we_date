import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_events.dart';
import 'package:we_date/features/home/discover/state/toggle_discover_details_state.dart';

class ToggleDiscoverDetailsBloc extends Bloc<ToggleDiscoverDetailsEvent, ToggleDiscoverDetailsState> {
  ToggleDiscoverDetailsBloc() : super(ToggleDiscoverDetailsInitial()) {
    on<ShowDiscoverDetails>(_showDiscoverDetails);
    on<HideDiscoverDetails>(_hideDiscoverDetails);
  }

  void _showDiscoverDetails(ShowDiscoverDetails event, Emitter<ToggleDiscoverDetailsState> emit) {
    emit(ShowDiscoverDetailsState(event.imageURL));
  }

  void _hideDiscoverDetails(HideDiscoverDetails event, Emitter<ToggleDiscoverDetailsState> emit) {
    emit(HideDiscoverDetailsState());
  }
}
