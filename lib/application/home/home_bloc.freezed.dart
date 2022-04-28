// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _GetHomeScreendata getHomeScreendata() {
    return const _GetHomeScreendata();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreendata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeScreendata value) getHomeScreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetHomeScreendata value)? getHomeScreendata,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeScreendata value)? getHomeScreendata,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$GetHomeScreendataCopyWith<$Res> {
  factory _$GetHomeScreendataCopyWith(
          _GetHomeScreendata value, $Res Function(_GetHomeScreendata) then) =
      __$GetHomeScreendataCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetHomeScreendataCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$GetHomeScreendataCopyWith<$Res> {
  __$GetHomeScreendataCopyWithImpl(
      _GetHomeScreendata _value, $Res Function(_GetHomeScreendata) _then)
      : super(_value, (v) => _then(v as _GetHomeScreendata));

  @override
  _GetHomeScreendata get _value => super._value as _GetHomeScreendata;
}

/// @nodoc

class _$_GetHomeScreendata implements _GetHomeScreendata {
  const _$_GetHomeScreendata();

  @override
  String toString() {
    return 'HomeEvent.getHomeScreendata()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetHomeScreendata);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeScreendata,
  }) {
    return getHomeScreendata();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeScreendata,
  }) {
    return getHomeScreendata?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeScreendata,
    required TResult orElse(),
  }) {
    if (getHomeScreendata != null) {
      return getHomeScreendata();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetHomeScreendata value) getHomeScreendata,
  }) {
    return getHomeScreendata(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetHomeScreendata value)? getHomeScreendata,
  }) {
    return getHomeScreendata?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetHomeScreendata value)? getHomeScreendata,
    required TResult orElse(),
  }) {
    if (getHomeScreendata != null) {
      return getHomeScreendata(this);
    }
    return orElse();
  }
}

abstract class _GetHomeScreendata implements HomeEvent {
  const factory _GetHomeScreendata() = _$_GetHomeScreendata;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Initial call(
      {required String posterPath,
      required List<NewAndHotData> movieList,
      required List<NewAndHotData> tvShowList,
      required bool isLoading,
      required bool isError}) {
    return _Initial(
      posterPath: posterPath,
      movieList: movieList,
      tvShowList: tvShowList,
      isLoading: isLoading,
      isError: isError,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  String get posterPath => throw _privateConstructorUsedError;
  List<NewAndHotData> get movieList => throw _privateConstructorUsedError;
  List<NewAndHotData> get tvShowList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String posterPath,
      List<NewAndHotData> movieList,
      List<NewAndHotData> tvShowList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? movieList = freezed,
    Object? tvShowList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      tvShowList: tvShowList == freezed
          ? _value.tvShowList
          : tvShowList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
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
abstract class _$InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String posterPath,
      List<NewAndHotData> movieList,
      List<NewAndHotData> tvShowList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? posterPath = freezed,
    Object? movieList = freezed,
    Object? tvShowList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_Initial(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      movieList: movieList == freezed
          ? _value.movieList
          : movieList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
      tvShowList: tvShowList == freezed
          ? _value.tvShowList
          : tvShowList // ignore: cast_nullable_to_non_nullable
              as List<NewAndHotData>,
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
      {required this.posterPath,
      required this.movieList,
      required this.tvShowList,
      required this.isLoading,
      required this.isError});

  @override
  final String posterPath;
  @override
  final List<NewAndHotData> movieList;
  @override
  final List<NewAndHotData> tvShowList;
  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(posterPath: $posterPath, movieList: $movieList, tvShowList: $tvShowList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.movieList, movieList) &&
            const DeepCollectionEquality()
                .equals(other.tvShowList, tvShowList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(movieList),
      const DeepCollectionEquality().hash(tvShowList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required String posterPath,
      required List<NewAndHotData> movieList,
      required List<NewAndHotData> tvShowList,
      required bool isLoading,
      required bool isError}) = _$_Initial;

  @override
  String get posterPath;
  @override
  List<NewAndHotData> get movieList;
  @override
  List<NewAndHotData> get tvShowList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
