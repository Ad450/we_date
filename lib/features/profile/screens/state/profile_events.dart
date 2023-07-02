abstract class ProfileEvent {}

class UpdateProfileEvent extends ProfileEvent {
  final String? firstName;
  final String? lastName;
  final String gender;
  final String? profileImageURL;

  UpdateProfileEvent({
    required this.gender,
    this.firstName,
    this.lastName,
    this.profileImageURL,
  });
}
