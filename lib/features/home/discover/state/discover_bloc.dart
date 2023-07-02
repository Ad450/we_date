import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:we_date/core/utils/classes.dart';
import 'package:we_date/features/home/discover/data/usecases/fetch_discovered_profiles.dart';
import 'package:we_date/features/home/discover/state/discover_events.dart';
import 'package:we_date/features/home/discover/state/discover_state.dart';

class DiscoverBloc extends Bloc<DiscoverEvents, DiscoverState> {
  final FetchDiscoveredProfiles fetchDiscoveredProfiles;

  DiscoverBloc({required this.fetchDiscoveredProfiles}) : super(const DiscoverState.fetchProfilesInitial()) {
    on<FetchDiscoveredProfilesEvent>(_fetchDiscoveredProfiles);
  }

  void _fetchDiscoveredProfiles(FetchDiscoveredProfilesEvent event, Emitter<DiscoverState> emit) async {
    emit(const DiscoverState.fetchProfilesLoading());
    final result = await fetchDiscoveredProfiles(const NoParam());
    result.fold(
      (l) => DiscoverState.fetchProfilesError(message: l.message),
      (r) => DiscoverState.fetchProfilesSuccess(profiles: r),
    );
  }
}
