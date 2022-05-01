// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$VideoDetailsEventTearOff {
  const _$VideoDetailsEventTearOff();

  _ShowDetailsPage showDetailsPage(
      BuildContext context, int id, List<DiscoverModel> videoData) {
    return _ShowDetailsPage(
      context,
      id,
      videoData,
    );
  }
}

/// @nodoc
const $VideoDetailsEvent = _$VideoDetailsEventTearOff();

/// @nodoc
mixin _$VideoDetailsEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<DiscoverModel> get videoData => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, int id, List<DiscoverModel> videoData)
        showDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, int id, List<DiscoverModel> videoData)?
        showDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, int id, List<DiscoverModel> videoData)?
        showDetailsPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDetailsPage value) showDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowDetailsPage value)? showDetailsPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDetailsPage value)? showDetailsPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoDetailsEventCopyWith<VideoDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailsEventCopyWith<$Res> {
  factory $VideoDetailsEventCopyWith(
          VideoDetailsEvent value, $Res Function(VideoDetailsEvent) then) =
      _$VideoDetailsEventCopyWithImpl<$Res>;
  $Res call({BuildContext context, int id, List<DiscoverModel> videoData});
}

/// @nodoc
class _$VideoDetailsEventCopyWithImpl<$Res>
    implements $VideoDetailsEventCopyWith<$Res> {
  _$VideoDetailsEventCopyWithImpl(this._value, this._then);

  final VideoDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(VideoDetailsEvent) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? id = freezed,
    Object? videoData = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoData: videoData == freezed
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as List<DiscoverModel>,
    ));
  }
}

/// @nodoc
abstract class _$ShowDetailsPageCopyWith<$Res>
    implements $VideoDetailsEventCopyWith<$Res> {
  factory _$ShowDetailsPageCopyWith(
          _ShowDetailsPage value, $Res Function(_ShowDetailsPage) then) =
      __$ShowDetailsPageCopyWithImpl<$Res>;
  @override
  $Res call({BuildContext context, int id, List<DiscoverModel> videoData});
}

/// @nodoc
class __$ShowDetailsPageCopyWithImpl<$Res>
    extends _$VideoDetailsEventCopyWithImpl<$Res>
    implements _$ShowDetailsPageCopyWith<$Res> {
  __$ShowDetailsPageCopyWithImpl(
      _ShowDetailsPage _value, $Res Function(_ShowDetailsPage) _then)
      : super(_value, (v) => _then(v as _ShowDetailsPage));

  @override
  _ShowDetailsPage get _value => super._value as _ShowDetailsPage;

  @override
  $Res call({
    Object? context = freezed,
    Object? id = freezed,
    Object? videoData = freezed,
  }) {
    return _then(_ShowDetailsPage(
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      videoData == freezed
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as List<DiscoverModel>,
    ));
  }
}

/// @nodoc

class _$_ShowDetailsPage implements _ShowDetailsPage {
  const _$_ShowDetailsPage(this.context, this.id, this.videoData);

  @override
  final BuildContext context;
  @override
  final int id;
  @override
  final List<DiscoverModel> videoData;

  @override
  String toString() {
    return 'VideoDetailsEvent.showDetailsPage(context: $context, id: $id, videoData: $videoData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShowDetailsPage &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.videoData, videoData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(videoData));

  @JsonKey(ignore: true)
  @override
  _$ShowDetailsPageCopyWith<_ShowDetailsPage> get copyWith =>
      __$ShowDetailsPageCopyWithImpl<_ShowDetailsPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, int id, List<DiscoverModel> videoData)
        showDetailsPage,
  }) {
    return showDetailsPage(context, id, videoData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            BuildContext context, int id, List<DiscoverModel> videoData)?
        showDetailsPage,
  }) {
    return showDetailsPage?.call(context, id, videoData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            BuildContext context, int id, List<DiscoverModel> videoData)?
        showDetailsPage,
    required TResult orElse(),
  }) {
    if (showDetailsPage != null) {
      return showDetailsPage(context, id, videoData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ShowDetailsPage value) showDetailsPage,
  }) {
    return showDetailsPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ShowDetailsPage value)? showDetailsPage,
  }) {
    return showDetailsPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ShowDetailsPage value)? showDetailsPage,
    required TResult orElse(),
  }) {
    if (showDetailsPage != null) {
      return showDetailsPage(this);
    }
    return orElse();
  }
}

abstract class _ShowDetailsPage implements VideoDetailsEvent {
  const factory _ShowDetailsPage(
          BuildContext context, int id, List<DiscoverModel> videoData) =
      _$_ShowDetailsPage;

  @override
  BuildContext get context;
  @override
  int get id;
  @override
  List<DiscoverModel> get videoData;
  @override
  @JsonKey(ignore: true)
  _$ShowDetailsPageCopyWith<_ShowDetailsPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$VideoDetailsStateTearOff {
  const _$VideoDetailsStateTearOff();

  _Initial call(
      {required DiscoverModel videoData,
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      videoData: videoData,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $VideoDetailsState = _$VideoDetailsStateTearOff();

/// @nodoc
mixin _$VideoDetailsState {
  DiscoverModel get videoData => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoDetailsStateCopyWith<VideoDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDetailsStateCopyWith<$Res> {
  factory $VideoDetailsStateCopyWith(
          VideoDetailsState value, $Res Function(VideoDetailsState) then) =
      _$VideoDetailsStateCopyWithImpl<$Res>;
  $Res call({DiscoverModel videoData, bool isLoading, bool isError});
}

/// @nodoc
class _$VideoDetailsStateCopyWithImpl<$Res>
    implements $VideoDetailsStateCopyWith<$Res> {
  _$VideoDetailsStateCopyWithImpl(this._value, this._then);

  final VideoDetailsState _value;
  // ignore: unused_field
  final $Res Function(VideoDetailsState) _then;

  @override
  $Res call({
    Object? videoData = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      videoData: videoData == freezed
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as DiscoverModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res>
    implements $VideoDetailsStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DiscoverModel videoData, bool isLoading, bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$VideoDetailsStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? videoData = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      videoData: videoData == freezed
          ? _value.videoData
          : videoData // ignore: cast_nullable_to_non_nullable
              as DiscoverModel,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.videoData,
      required this.isLoading,
      required this.isError});

  @override
  final DiscoverModel videoData;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'VideoDetailsState(videoData: $videoData, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.videoData, videoData) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(videoData),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements VideoDetailsState {
  const factory _Initial(
      {required DiscoverModel videoData,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  DiscoverModel get videoData;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
