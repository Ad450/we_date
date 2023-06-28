import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_model.freezed.dart';

part 'location_model.g.dart';

@freezed
abstract class LocationModel with _$LocationModel {
  factory LocationModel({
    required double? lat,
    required double? long,
  }) = _LocationModel;

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
