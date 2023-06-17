abstract class DiscoverEvent {}

class ShowDiscoverDetails extends DiscoverEvent {
  final String imageURL;
  ShowDiscoverDetails(this.imageURL);
}

class HideDiscoverDetails extends DiscoverEvent {}
