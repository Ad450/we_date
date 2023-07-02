// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoriesStateCopyWith<$Res> {
  factory $StoriesStateCopyWith(
          StoriesState value, $Res Function(StoriesState) then) =
      _$StoriesStateCopyWithImpl<$Res, StoriesState>;
}

/// @nodoc
class _$StoriesStateCopyWithImpl<$Res, $Val extends StoriesState>
    implements $StoriesStateCopyWith<$Res> {
  _$StoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoriesStateInitialCopyWith<$Res> {
  factory _$$StoriesStateInitialCopyWith(_$StoriesStateInitial value,
          $Res Function(_$StoriesStateInitial) then) =
      __$$StoriesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesStateInitialCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateInitial>
    implements _$$StoriesStateInitialCopyWith<$Res> {
  __$$StoriesStateInitialCopyWithImpl(
      _$StoriesStateInitial _value, $Res Function(_$StoriesStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesStateInitial implements StoriesStateInitial {
  const _$StoriesStateInitial();

  @override
  String toString() {
    return 'StoriesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoriesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class StoriesStateInitial implements StoriesState {
  const factory StoriesStateInitial() = _$StoriesStateInitial;
}

/// @nodoc
abstract class _$$StoriesStateGetStoriesLoadingCopyWith<$Res> {
  factory _$$StoriesStateGetStoriesLoadingCopyWith(
          _$StoriesStateGetStoriesLoading value,
          $Res Function(_$StoriesStateGetStoriesLoading) then) =
      __$$StoriesStateGetStoriesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesStateGetStoriesLoadingCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateGetStoriesLoading>
    implements _$$StoriesStateGetStoriesLoadingCopyWith<$Res> {
  __$$StoriesStateGetStoriesLoadingCopyWithImpl(
      _$StoriesStateGetStoriesLoading _value,
      $Res Function(_$StoriesStateGetStoriesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesStateGetStoriesLoading implements StoriesStateGetStoriesLoading {
  const _$StoriesStateGetStoriesLoading();

  @override
  String toString() {
    return 'StoriesState.getStoriesLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateGetStoriesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return getStoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return getStoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (getStoriesLoading != null) {
      return getStoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return getStoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return getStoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (getStoriesLoading != null) {
      return getStoriesLoading(this);
    }
    return orElse();
  }
}

abstract class StoriesStateGetStoriesLoading implements StoriesState {
  const factory StoriesStateGetStoriesLoading() =
      _$StoriesStateGetStoriesLoading;
}

/// @nodoc
abstract class _$$StoriesStateGetStoriesSuccessCopyWith<$Res> {
  factory _$$StoriesStateGetStoriesSuccessCopyWith(
          _$StoriesStateGetStoriesSuccess value,
          $Res Function(_$StoriesStateGetStoriesSuccess) then) =
      __$$StoriesStateGetStoriesSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({List<StoryModel> stories});
}

/// @nodoc
class __$$StoriesStateGetStoriesSuccessCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateGetStoriesSuccess>
    implements _$$StoriesStateGetStoriesSuccessCopyWith<$Res> {
  __$$StoriesStateGetStoriesSuccessCopyWithImpl(
      _$StoriesStateGetStoriesSuccess _value,
      $Res Function(_$StoriesStateGetStoriesSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stories = null,
  }) {
    return _then(_$StoriesStateGetStoriesSuccess(
      null == stories
          ? _value._stories
          : stories // ignore: cast_nullable_to_non_nullable
              as List<StoryModel>,
    ));
  }
}

/// @nodoc

class _$StoriesStateGetStoriesSuccess implements StoriesStateGetStoriesSuccess {
  const _$StoriesStateGetStoriesSuccess(final List<StoryModel> stories)
      : _stories = stories;

  final List<StoryModel> _stories;
  @override
  List<StoryModel> get stories {
    if (_stories is EqualUnmodifiableListView) return _stories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stories);
  }

  @override
  String toString() {
    return 'StoriesState.getStoriesSuccess(stories: $stories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateGetStoriesSuccess &&
            const DeepCollectionEquality().equals(other._stories, _stories));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesStateGetStoriesSuccessCopyWith<_$StoriesStateGetStoriesSuccess>
      get copyWith => __$$StoriesStateGetStoriesSuccessCopyWithImpl<
          _$StoriesStateGetStoriesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return getStoriesSuccess(stories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return getStoriesSuccess?.call(stories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (getStoriesSuccess != null) {
      return getStoriesSuccess(stories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return getStoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return getStoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (getStoriesSuccess != null) {
      return getStoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class StoriesStateGetStoriesSuccess implements StoriesState {
  const factory StoriesStateGetStoriesSuccess(final List<StoryModel> stories) =
      _$StoriesStateGetStoriesSuccess;

  List<StoryModel> get stories;
  @JsonKey(ignore: true)
  _$$StoriesStateGetStoriesSuccessCopyWith<_$StoriesStateGetStoriesSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesStateGetStoriesErrorCopyWith<$Res> {
  factory _$$StoriesStateGetStoriesErrorCopyWith(
          _$StoriesStateGetStoriesError value,
          $Res Function(_$StoriesStateGetStoriesError) then) =
      __$$StoriesStateGetStoriesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoriesStateGetStoriesErrorCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateGetStoriesError>
    implements _$$StoriesStateGetStoriesErrorCopyWith<$Res> {
  __$$StoriesStateGetStoriesErrorCopyWithImpl(
      _$StoriesStateGetStoriesError _value,
      $Res Function(_$StoriesStateGetStoriesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoriesStateGetStoriesError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoriesStateGetStoriesError implements StoriesStateGetStoriesError {
  const _$StoriesStateGetStoriesError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StoriesState.getStoriesError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateGetStoriesError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesStateGetStoriesErrorCopyWith<_$StoriesStateGetStoriesError>
      get copyWith => __$$StoriesStateGetStoriesErrorCopyWithImpl<
          _$StoriesStateGetStoriesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return getStoriesError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return getStoriesError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (getStoriesError != null) {
      return getStoriesError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return getStoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return getStoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (getStoriesError != null) {
      return getStoriesError(this);
    }
    return orElse();
  }
}

abstract class StoriesStateGetStoriesError implements StoriesState {
  const factory StoriesStateGetStoriesError(final String message) =
      _$StoriesStateGetStoriesError;

  String get message;
  @JsonKey(ignore: true)
  _$$StoriesStateGetStoriesErrorCopyWith<_$StoriesStateGetStoriesError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StoriesStateUploadStoryLoadingCopyWith<$Res> {
  factory _$$StoriesStateUploadStoryLoadingCopyWith(
          _$StoriesStateUploadStoryLoading value,
          $Res Function(_$StoriesStateUploadStoryLoading) then) =
      __$$StoriesStateUploadStoryLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesStateUploadStoryLoadingCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateUploadStoryLoading>
    implements _$$StoriesStateUploadStoryLoadingCopyWith<$Res> {
  __$$StoriesStateUploadStoryLoadingCopyWithImpl(
      _$StoriesStateUploadStoryLoading _value,
      $Res Function(_$StoriesStateUploadStoryLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesStateUploadStoryLoading
    implements StoriesStateUploadStoryLoading {
  const _$StoriesStateUploadStoryLoading();

  @override
  String toString() {
    return 'StoriesState.uploadStoryLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateUploadStoryLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return uploadStoryLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return uploadStoryLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (uploadStoryLoading != null) {
      return uploadStoryLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return uploadStoryLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return uploadStoryLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (uploadStoryLoading != null) {
      return uploadStoryLoading(this);
    }
    return orElse();
  }
}

abstract class StoriesStateUploadStoryLoading implements StoriesState {
  const factory StoriesStateUploadStoryLoading() =
      _$StoriesStateUploadStoryLoading;
}

/// @nodoc
abstract class _$$StoriesStateUploadStorySuccessCopyWith<$Res> {
  factory _$$StoriesStateUploadStorySuccessCopyWith(
          _$StoriesStateUploadStorySuccess value,
          $Res Function(_$StoriesStateUploadStorySuccess) then) =
      __$$StoriesStateUploadStorySuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoriesStateUploadStorySuccessCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateUploadStorySuccess>
    implements _$$StoriesStateUploadStorySuccessCopyWith<$Res> {
  __$$StoriesStateUploadStorySuccessCopyWithImpl(
      _$StoriesStateUploadStorySuccess _value,
      $Res Function(_$StoriesStateUploadStorySuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoriesStateUploadStorySuccess
    implements StoriesStateUploadStorySuccess {
  const _$StoriesStateUploadStorySuccess();

  @override
  String toString() {
    return 'StoriesState.uploadStorySuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateUploadStorySuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return uploadStorySuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return uploadStorySuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (uploadStorySuccess != null) {
      return uploadStorySuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return uploadStorySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return uploadStorySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (uploadStorySuccess != null) {
      return uploadStorySuccess(this);
    }
    return orElse();
  }
}

abstract class StoriesStateUploadStorySuccess implements StoriesState {
  const factory StoriesStateUploadStorySuccess() =
      _$StoriesStateUploadStorySuccess;
}

/// @nodoc
abstract class _$$StoriesStateUploadStoryErrorCopyWith<$Res> {
  factory _$$StoriesStateUploadStoryErrorCopyWith(
          _$StoriesStateUploadStoryError value,
          $Res Function(_$StoriesStateUploadStoryError) then) =
      __$$StoriesStateUploadStoryErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StoriesStateUploadStoryErrorCopyWithImpl<$Res>
    extends _$StoriesStateCopyWithImpl<$Res, _$StoriesStateUploadStoryError>
    implements _$$StoriesStateUploadStoryErrorCopyWith<$Res> {
  __$$StoriesStateUploadStoryErrorCopyWithImpl(
      _$StoriesStateUploadStoryError _value,
      $Res Function(_$StoriesStateUploadStoryError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StoriesStateUploadStoryError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StoriesStateUploadStoryError implements StoriesStateUploadStoryError {
  const _$StoriesStateUploadStoryError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'StoriesState.uploadStoryError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoriesStateUploadStoryError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoriesStateUploadStoryErrorCopyWith<_$StoriesStateUploadStoryError>
      get copyWith => __$$StoriesStateUploadStoryErrorCopyWithImpl<
          _$StoriesStateUploadStoryError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getStoriesLoading,
    required TResult Function(List<StoryModel> stories) getStoriesSuccess,
    required TResult Function(String message) getStoriesError,
    required TResult Function() uploadStoryLoading,
    required TResult Function() uploadStorySuccess,
    required TResult Function(String message) uploadStoryError,
  }) {
    return uploadStoryError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getStoriesLoading,
    TResult? Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult? Function(String message)? getStoriesError,
    TResult? Function()? uploadStoryLoading,
    TResult? Function()? uploadStorySuccess,
    TResult? Function(String message)? uploadStoryError,
  }) {
    return uploadStoryError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getStoriesLoading,
    TResult Function(List<StoryModel> stories)? getStoriesSuccess,
    TResult Function(String message)? getStoriesError,
    TResult Function()? uploadStoryLoading,
    TResult Function()? uploadStorySuccess,
    TResult Function(String message)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (uploadStoryError != null) {
      return uploadStoryError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StoriesStateInitial value) initial,
    required TResult Function(StoriesStateGetStoriesLoading value)
        getStoriesLoading,
    required TResult Function(StoriesStateGetStoriesSuccess value)
        getStoriesSuccess,
    required TResult Function(StoriesStateGetStoriesError value)
        getStoriesError,
    required TResult Function(StoriesStateUploadStoryLoading value)
        uploadStoryLoading,
    required TResult Function(StoriesStateUploadStorySuccess value)
        uploadStorySuccess,
    required TResult Function(StoriesStateUploadStoryError value)
        uploadStoryError,
  }) {
    return uploadStoryError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StoriesStateInitial value)? initial,
    TResult? Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult? Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult? Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult? Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult? Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult? Function(StoriesStateUploadStoryError value)? uploadStoryError,
  }) {
    return uploadStoryError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StoriesStateInitial value)? initial,
    TResult Function(StoriesStateGetStoriesLoading value)? getStoriesLoading,
    TResult Function(StoriesStateGetStoriesSuccess value)? getStoriesSuccess,
    TResult Function(StoriesStateGetStoriesError value)? getStoriesError,
    TResult Function(StoriesStateUploadStoryLoading value)? uploadStoryLoading,
    TResult Function(StoriesStateUploadStorySuccess value)? uploadStorySuccess,
    TResult Function(StoriesStateUploadStoryError value)? uploadStoryError,
    required TResult orElse(),
  }) {
    if (uploadStoryError != null) {
      return uploadStoryError(this);
    }
    return orElse();
  }
}

abstract class StoriesStateUploadStoryError implements StoriesState {
  const factory StoriesStateUploadStoryError(final String message) =
      _$StoriesStateUploadStoryError;

  String get message;
  @JsonKey(ignore: true)
  _$$StoriesStateUploadStoryErrorCopyWith<_$StoriesStateUploadStoryError>
      get copyWith => throw _privateConstructorUsedError;
}
