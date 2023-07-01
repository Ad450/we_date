import 'package:we_date/core/models/profile_model.dart';

abstract class DiscoveryRepository {
  Future<List<ProfileModel>> fetchDiscoveredProfiles({
    String? gender,
    String? country,
    String? religion,
    String? height,
    String? age,
    String? occupation,
    String? education,
  });
}
