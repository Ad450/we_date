import 'package:freezed_annotation/freezed_annotation.dart';

part 'preferences_model.freezed.dart';

part 'preferences_model.g.dart';

@freezed
abstract class PreferencesModel with _$PreferencesModel {
  factory PreferencesModel({
    required String uid,
    String? gender,
    String? country,
    String? religion,
    String? height,
    String? age,
    String? occupation,
    String? education,
  }) = _PreferencesModel;

  factory PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$PreferencesModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
