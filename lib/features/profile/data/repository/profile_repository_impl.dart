import 'package:we_date/core/utils/functions.dart';
import 'package:we_date/features/profile/data/datasources/remote_datasources/profile_remote_datasource.dart';
import 'package:we_date/features/profile/data/repository/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileRemoteDatasource _profileRemoteDatasource;

  ProfileRepositoryImpl(this._profileRemoteDatasource);

  @override
  Future<void> updateProfile(
      {required String gender,
      String? firstName,
      String? lastName,
      String? profileImageURL}) async {
    return await guardedApiCall(() => _profileRemoteDatasource.updateProfile(
          gender: gender,
          firstName: firstName,
          lastName: lastName,
          profileImageURL: profileImageURL,
        ));
  }
}
