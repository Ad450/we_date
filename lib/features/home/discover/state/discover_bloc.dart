import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/features/home/discover/state/discover_events.dart';
import 'package:we_date/features/home/discover/state/discover_state.dart';

class DiscoverBloc extends Bloc<DiscoverEvent, DiscoverState> {
  DiscoverBloc() : super(DiscoverStateInitial()) {
    on<ShowDiscoverDetails>(_showDiscoverDetails);
    on<HideDiscoverDetails>(_hideDiscoverDetails);
  }

  void _showDiscoverDetails(ShowDiscoverDetails event, Emitter<DiscoverState> emit) {
    emit(ShowDiscoverDetailsState(event.imageURL));
  }

  void _hideDiscoverDetails(HideDiscoverDetails event, Emitter<DiscoverState> emit) {
    emit(HideDiscoverDetailsState());
  }
}
