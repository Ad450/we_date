abstract class ToggleDiscoverDetailsEvent {}

class ShowDiscoverDetails extends ToggleDiscoverDetailsEvent {
  final String imageURL;

  ShowDiscoverDetails(this.imageURL);
}

class HideDiscoverDetails extends ToggleDiscoverDetailsEvent {}
