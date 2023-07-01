// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preferences_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PreferencesModel _$PreferencesModelFromJson(Map<String, dynamic> json) {
  return _PreferencesModel.fromJson(json);
}

/// @nodoc
mixin _$PreferencesModel {
  String get uid => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get religion => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  String? get education => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreferencesModelCopyWith<PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreferencesModelCopyWith<$Res> {
  factory $PreferencesModelCopyWith(
          PreferencesModel value, $Res Function(PreferencesModel) then) =
      _$PreferencesModelCopyWithImpl<$Res, PreferencesModel>;
  @useResult
  $Res call(
      {String uid,
      String? gender,
      String? country,
      String? religion,
      String? height,
      String? age,
      String? occupation,
      String? education});
}

/// @nodoc
class _$PreferencesModelCopyWithImpl<$Res, $Val extends PreferencesModel>
    implements $PreferencesModelCopyWith<$Res> {
  _$PreferencesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? gender = freezed,
    Object? country = freezed,
    Object? religion = freezed,
    Object? height = freezed,
    Object? age = freezed,
    Object? occupation = freezed,
    Object? education = freezed,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PreferencesModelCopyWith<$Res>
    implements $PreferencesModelCopyWith<$Res> {
  factory _$$_PreferencesModelCopyWith(
          _$_PreferencesModel value, $Res Function(_$_PreferencesModel) then) =
      __$$_PreferencesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String? gender,
      String? country,
      String? religion,
      String? height,
      String? age,
      String? occupation,
      String? education});
}

/// @nodoc
class __$$_PreferencesModelCopyWithImpl<$Res>
    extends _$PreferencesModelCopyWithImpl<$Res, _$_PreferencesModel>
    implements _$$_PreferencesModelCopyWith<$Res> {
  __$$_PreferencesModelCopyWithImpl(
      _$_PreferencesModel _value, $Res Function(_$_PreferencesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? gender = freezed,
    Object? country = freezed,
    Object? religion = freezed,
    Object? height = freezed,
    Object? age = freezed,
    Object? occupation = freezed,
    Object? education = freezed,
  }) {
    return _then(_$_PreferencesModel(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      religion: freezed == religion
          ? _value.religion
          : religion // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      occupation: freezed == occupation
          ? _value.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PreferencesModel implements _PreferencesModel {
  _$_PreferencesModel(
      {required this.uid,
      this.gender,
      this.country,
      this.religion,
      this.height,
      this.age,
      this.occupation,
      this.education});

  factory _$_PreferencesModel.fromJson(Map<String, dynamic> json) =>
      _$$_PreferencesModelFromJson(json);

  @override
  final String uid;
  @override
  final String? gender;
  @override
  final String? country;
  @override
  final String? religion;
  @override
  final String? height;
  @override
  final String? age;
  @override
  final String? occupation;
  @override
  final String? education;

  @override
  String toString() {
    return 'PreferencesModel(uid: $uid, gender: $gender, country: $country, religion: $religion, height: $height, age: $age, occupation: $occupation, education: $education)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PreferencesModel &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.education, education) ||
                other.education == education));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, gender, country, religion,
      height, age, occupation, education);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PreferencesModelCopyWith<_$_PreferencesModel> get copyWith =>
      __$$_PreferencesModelCopyWithImpl<_$_PreferencesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PreferencesModelToJson(
      this,
    );
  }
}

abstract class _PreferencesModel implements PreferencesModel {
  factory _PreferencesModel(
      {required final String uid,
      final String? gender,
      final String? country,
      final String? religion,
      final String? height,
      final String? age,
      final String? occupation,
      final String? education}) = _$_PreferencesModel;

  factory _PreferencesModel.fromJson(Map<String, dynamic> json) =
      _$_PreferencesModel.fromJson;

  @override
  String get uid;
  @override
  String? get gender;
  @override
  String? get country;
  @override
  String? get religion;
  @override
  String? get height;
  @override
  String? get age;
  @override
  String? get occupation;
  @override
  String? get education;
  @override
  @JsonKey(ignore: true)
  _$$_PreferencesModelCopyWith<_$_PreferencesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
