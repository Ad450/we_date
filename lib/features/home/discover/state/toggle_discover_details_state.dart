abstract class ToggleDiscoverDetailsState {}

class ToggleDiscoverDetailsInitial extends ToggleDiscoverDetailsState {}

class ShowDiscoverDetailsState extends ToggleDiscoverDetailsState {
  final String imageURL;
  ShowDiscoverDetailsState(this.imageURL);
}

class HideDiscoverDetailsState extends ToggleDiscoverDetailsState {}