// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantDetailsResponse _$RestaurantDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _RestaurantDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$RestaurantDetailsResponse {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  RestaurantResponse? get restaurant => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantDetailsResponseCopyWith<RestaurantDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantDetailsResponseCopyWith<$Res> {
  factory $RestaurantDetailsResponseCopyWith(RestaurantDetailsResponse value,
          $Res Function(RestaurantDetailsResponse) then) =
      _$RestaurantDetailsResponseCopyWithImpl<$Res, RestaurantDetailsResponse>;
  @useResult
  $Res call({bool error, String message, RestaurantResponse? restaurant});

  $RestaurantResponseCopyWith<$Res>? get restaurant;
}

/// @nodoc
class _$RestaurantDetailsResponseCopyWithImpl<$Res,
        $Val extends RestaurantDetailsResponse>
    implements $RestaurantDetailsResponseCopyWith<$Res> {
  _$RestaurantDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? restaurant = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as RestaurantResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RestaurantResponseCopyWith<$Res>? get restaurant {
    if (_value.restaurant == null) {
      return null;
    }

    return $RestaurantResponseCopyWith<$Res>(_value.restaurant!, (value) {
      return _then(_value.copyWith(restaurant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantDetailsResponseImplCopyWith<$Res>
    implements $RestaurantDetailsResponseCopyWith<$Res> {
  factory _$$RestaurantDetailsResponseImplCopyWith(
          _$RestaurantDetailsResponseImpl value,
          $Res Function(_$RestaurantDetailsResponseImpl) then) =
      __$$RestaurantDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool error, String message, RestaurantResponse? restaurant});

  @override
  $RestaurantResponseCopyWith<$Res>? get restaurant;
}

/// @nodoc
class __$$RestaurantDetailsResponseImplCopyWithImpl<$Res>
    extends _$RestaurantDetailsResponseCopyWithImpl<$Res,
        _$RestaurantDetailsResponseImpl>
    implements _$$RestaurantDetailsResponseImplCopyWith<$Res> {
  __$$RestaurantDetailsResponseImplCopyWithImpl(
      _$RestaurantDetailsResponseImpl _value,
      $Res Function(_$RestaurantDetailsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? restaurant = freezed,
  }) {
    return _then(_$RestaurantDetailsResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      restaurant: freezed == restaurant
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as RestaurantResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantDetailsResponseImpl implements _RestaurantDetailsResponse {
  const _$RestaurantDetailsResponseImpl(
      {required this.error, required this.message, this.restaurant = null});

  factory _$RestaurantDetailsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantDetailsResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  @JsonKey()
  final RestaurantResponse? restaurant;

  @override
  String toString() {
    return 'RestaurantDetailsResponse(error: $error, message: $message, restaurant: $restaurant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantDetailsResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, restaurant);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantDetailsResponseImplCopyWith<_$RestaurantDetailsResponseImpl>
      get copyWith => __$$RestaurantDetailsResponseImplCopyWithImpl<
          _$RestaurantDetailsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantDetailsResponseImplToJson(
      this,
    );
  }
}

abstract class _RestaurantDetailsResponse implements RestaurantDetailsResponse {
  const factory _RestaurantDetailsResponse(
      {required final bool error,
      required final String message,
      final RestaurantResponse? restaurant}) = _$RestaurantDetailsResponseImpl;

  factory _RestaurantDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$RestaurantDetailsResponseImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  RestaurantResponse? get restaurant;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantDetailsResponseImplCopyWith<_$RestaurantDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
