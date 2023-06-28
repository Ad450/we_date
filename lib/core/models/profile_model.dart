import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:we_date/core/models/location_model.dart';

part 'profile_model.freezed.dart';

part 'profile_model.g.dart';

@freezed
abstract class ProfileModel with _$ProfileModel {
  factory ProfileModel({
    required String uid,
    required String gender,
    required LocationModel? location,
    String? firstName,
    String? lastName,
    String? profileImage,
    String? numberOfProfileImages,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
