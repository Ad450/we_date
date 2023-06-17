abstract class DiscoverState {}

class DiscoverStateInitial extends DiscoverState {}

class ShowDiscoverDetailsState extends DiscoverState {
  final String imageURL;
  ShowDiscoverDetailsState(this.imageURL);
}

class HideDiscoverDetailsState extends DiscoverState {}
