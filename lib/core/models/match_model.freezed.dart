// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MatchModel _$MatchModelFromJson(Map<String, dynamic> json) {
  return _MatchModel.fromJson(json);
}

/// @nodoc
mixin _$MatchModel {
  String get sender => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get declinedAt => throw _privateConstructorUsedError;
  DateTime? get acceptedAt => throw _privateConstructorUsedError;
  DateTime? get sentAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchModelCopyWith<MatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchModelCopyWith<$Res> {
  factory $MatchModelCopyWith(
          MatchModel value, $Res Function(MatchModel) then) =
      _$MatchModelCopyWithImpl<$Res, MatchModel>;
  @useResult
  $Res call(
      {String sender,
      String to,
      String status,
      DateTime? declinedAt,
      DateTime? acceptedAt,
      DateTime? sentAt});
}

/// @nodoc
class _$MatchModelCopyWithImpl<$Res, $Val extends MatchModel>
    implements $MatchModelCopyWith<$Res> {
  _$MatchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sender = null,
    Object? to = null,
    Object? status = null,
    Object? declinedAt = freezed,
    Object? acceptedAt = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(_value.copyWith(
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      declinedAt: freezed == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchModelCopyWith<$Res>
    implements $MatchModelCopyWith<$Res> {
  factory _$$_MatchModelCopyWith(
          _$_MatchModel value, $Res Function(_$_MatchModel) then) =
      __$$_MatchModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String sender,
      String to,
      String status,
      DateTime? declinedAt,
      DateTime? acceptedAt,
      DateTime? sentAt});
}

/// @nodoc
class __$$_MatchModelCopyWithImpl<$Res>
    extends _$MatchModelCopyWithImpl<$Res, _$_MatchModel>
    implements _$$_MatchModelCopyWith<$Res> {
  __$$_MatchModelCopyWithImpl(
      _$_MatchModel _value, $Res Function(_$_MatchModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sender = null,
    Object? to = null,
    Object? status = null,
    Object? declinedAt = freezed,
    Object? acceptedAt = freezed,
    Object? sentAt = freezed,
  }) {
    return _then(_$_MatchModel(
      sender: null == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      declinedAt: freezed == declinedAt
          ? _value.declinedAt
          : declinedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      acceptedAt: freezed == acceptedAt
          ? _value.acceptedAt
          : acceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      sentAt: freezed == sentAt
          ? _value.sentAt
          : sentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchModel implements _MatchModel {
  _$_MatchModel(
      {required this.sender,
      required this.to,
      required this.status,
      this.declinedAt,
      this.acceptedAt,
      this.sentAt});

  factory _$_MatchModel.fromJson(Map<String, dynamic> json) =>
      _$$_MatchModelFromJson(json);

  @override
  final String sender;
  @override
  final String to;
  @override
  final String status;
  @override
  final DateTime? declinedAt;
  @override
  final DateTime? acceptedAt;
  @override
  final DateTime? sentAt;

  @override
  String toString() {
    return 'MatchModel(sender: $sender, to: $to, status: $status, declinedAt: $declinedAt, acceptedAt: $acceptedAt, sentAt: $sentAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchModel &&
            (identical(other.sender, sender) || other.sender == sender) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.declinedAt, declinedAt) ||
                other.declinedAt == declinedAt) &&
            (identical(other.acceptedAt, acceptedAt) ||
                other.acceptedAt == acceptedAt) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sender, to, status, declinedAt, acceptedAt, sentAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchModelCopyWith<_$_MatchModel> get copyWith =>
      __$$_MatchModelCopyWithImpl<_$_MatchModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchModelToJson(
      this,
    );
  }
}

abstract class _MatchModel implements MatchModel {
  factory _MatchModel(
      {required final String sender,
      required final String to,
      required final String status,
      final DateTime? declinedAt,
      final DateTime? acceptedAt,
      final DateTime? sentAt}) = _$_MatchModel;

  factory _MatchModel.fromJson(Map<String, dynamic> json) =
      _$_MatchModel.fromJson;

  @override
  String get sender;
  @override
  String get to;
  @override
  String get status;
  @override
  DateTime? get declinedAt;
  @override
  DateTime? get acceptedAt;
  @override
  DateTime? get sentAt;
  @override
  @JsonKey(ignore: true)
  _$$_MatchModelCopyWith<_$_MatchModel> get copyWith =>
      throw _privateConstructorUsedError;
}
