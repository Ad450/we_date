import 'package:we_date/core/models/profile_model.dart';
import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/features/home/discover/data/datasources/remote_datasource/DiscoverRemoteDatasource.dart';
import 'package:we_date/features/home/discover/data/repository/DiscoverRepository.dart';

class DiscoverRepositoryImpl implements DiscoveryRepository {
  final DiscoverRemoteDatasource _discoverRemoteDatasource;

  DiscoverRepositoryImpl(this._discoverRemoteDatasource);

  @override
  Future<List<ProfileModel>> fetchDiscoveredProfiles() async {
    return await guardedApiCall(() => _discoverRemoteDatasource.fetchDiscoveredProfiles());
  }
}
