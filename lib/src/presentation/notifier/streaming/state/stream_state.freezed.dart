// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StreamState {
  String get token => throw _privateConstructorUsedError;
  String get chanel => throw _privateConstructorUsedError;
  int? get localUserId => throw _privateConstructorUsedError;
  bool get liveUser => throw _privateConstructorUsedError;
  RtcEngine? get engine => throw _privateConstructorUsedError;

  /// Create a copy of StreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StreamStateCopyWith<StreamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamStateCopyWith<$Res> {
  factory $StreamStateCopyWith(
          StreamState value, $Res Function(StreamState) then) =
      _$StreamStateCopyWithImpl<$Res, StreamState>;
  @useResult
  $Res call(
      {String token,
      String chanel,
      int? localUserId,
      bool liveUser,
      RtcEngine? engine});
}

/// @nodoc
class _$StreamStateCopyWithImpl<$Res, $Val extends StreamState>
    implements $StreamStateCopyWith<$Res> {
  _$StreamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? chanel = null,
    Object? localUserId = freezed,
    Object? liveUser = null,
    Object? engine = freezed,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      chanel: null == chanel
          ? _value.chanel
          : chanel // ignore: cast_nullable_to_non_nullable
              as String,
      localUserId: freezed == localUserId
          ? _value.localUserId
          : localUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      liveUser: null == liveUser
          ? _value.liveUser
          : liveUser // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StreamStateImplCopyWith<$Res>
    implements $StreamStateCopyWith<$Res> {
  factory _$$StreamStateImplCopyWith(
          _$StreamStateImpl value, $Res Function(_$StreamStateImpl) then) =
      __$$StreamStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String token,
      String chanel,
      int? localUserId,
      bool liveUser,
      RtcEngine? engine});
}

/// @nodoc
class __$$StreamStateImplCopyWithImpl<$Res>
    extends _$StreamStateCopyWithImpl<$Res, _$StreamStateImpl>
    implements _$$StreamStateImplCopyWith<$Res> {
  __$$StreamStateImplCopyWithImpl(
      _$StreamStateImpl _value, $Res Function(_$StreamStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StreamState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? chanel = null,
    Object? localUserId = freezed,
    Object? liveUser = null,
    Object? engine = freezed,
  }) {
    return _then(_$StreamStateImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      chanel: null == chanel
          ? _value.chanel
          : chanel // ignore: cast_nullable_to_non_nullable
              as String,
      localUserId: freezed == localUserId
          ? _value.localUserId
          : localUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      liveUser: null == liveUser
          ? _value.liveUser
          : liveUser // ignore: cast_nullable_to_non_nullable
              as bool,
      engine: freezed == engine
          ? _value.engine
          : engine // ignore: cast_nullable_to_non_nullable
              as RtcEngine?,
    ));
  }
}

/// @nodoc

class _$StreamStateImpl implements _StreamState {
  _$StreamStateImpl(
      {this.token = "",
      this.chanel = "",
      this.localUserId = null,
      this.liveUser = false,
      this.engine = null});

  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final String chanel;
  @override
  @JsonKey()
  final int? localUserId;
  @override
  @JsonKey()
  final bool liveUser;
  @override
  @JsonKey()
  final RtcEngine? engine;

  @override
  String toString() {
    return 'StreamState(token: $token, chanel: $chanel, localUserId: $localUserId, liveUser: $liveUser, engine: $engine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamStateImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.chanel, chanel) || other.chanel == chanel) &&
            (identical(other.localUserId, localUserId) ||
                other.localUserId == localUserId) &&
            (identical(other.liveUser, liveUser) ||
                other.liveUser == liveUser) &&
            (identical(other.engine, engine) || other.engine == engine));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, token, chanel, localUserId, liveUser, engine);

  /// Create a copy of StreamState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamStateImplCopyWith<_$StreamStateImpl> get copyWith =>
      __$$StreamStateImplCopyWithImpl<_$StreamStateImpl>(this, _$identity);
}

abstract class _StreamState implements StreamState {
  factory _StreamState(
      {final String token,
      final String chanel,
      final int? localUserId,
      final bool liveUser,
      final RtcEngine? engine}) = _$StreamStateImpl;

  @override
  String get token;
  @override
  String get chanel;
  @override
  int? get localUserId;
  @override
  bool get liveUser;
  @override
  RtcEngine? get engine;

  /// Create a copy of StreamState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamStateImplCopyWith<_$StreamStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
