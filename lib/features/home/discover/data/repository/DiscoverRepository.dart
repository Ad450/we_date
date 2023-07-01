import 'package:we_date/core/models/profile_model.dart';

abstract class DiscoveryRepository {
  Future<List<ProfileModel>> fetchDiscoveredProfiles();
}
