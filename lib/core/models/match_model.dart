import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_model.freezed.dart';

part 'match_model.g.dart';

@freezed
abstract class MatchModel with _$MatchModel {
  factory MatchModel({
    required String sender,
    required String to,
    required String status,
    DateTime? declinedAt,
    DateTime? acceptedAt,
    DateTime? sentAt,
  }) = _MatchModel;

  factory MatchModel.fromJson(Map<String, dynamic> json) =>
      _$MatchModelFromJson(
        Map.castFrom<dynamic, dynamic, String, dynamic>(json),
      );
}
