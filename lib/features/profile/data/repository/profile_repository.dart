abstract class ProfileRepository {
  Future<void> updateProfile({
    required String? gender,
    String? firstName,
    String? lastName,
    String? profileImageURL,
  });
}
