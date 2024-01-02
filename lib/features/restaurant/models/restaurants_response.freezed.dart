// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurants_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantsResponse _$RestaurantsResponseFromJson(Map<String, dynamic> json) {
  return _RestaurantsResponse.fromJson(json);
}

/// @nodoc
mixin _$RestaurantsResponse {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  List<RestaurantResponse> get restaurants =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantsResponseCopyWith<RestaurantsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsResponseCopyWith<$Res> {
  factory $RestaurantsResponseCopyWith(
          RestaurantsResponse value, $Res Function(RestaurantsResponse) then) =
      _$RestaurantsResponseCopyWithImpl<$Res, RestaurantsResponse>;
  @useResult
  $Res call(
      {bool error,
      String message,
      int count,
      List<RestaurantResponse> restaurants});
}

/// @nodoc
class _$RestaurantsResponseCopyWithImpl<$Res, $Val extends RestaurantsResponse>
    implements $RestaurantsResponseCopyWith<$Res> {
  _$RestaurantsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? count = null,
    Object? restaurants = null,
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
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      restaurants: null == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantsResponseImplCopyWith<$Res>
    implements $RestaurantsResponseCopyWith<$Res> {
  factory _$$RestaurantsResponseImplCopyWith(_$RestaurantsResponseImpl value,
          $Res Function(_$RestaurantsResponseImpl) then) =
      __$$RestaurantsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool error,
      String message,
      int count,
      List<RestaurantResponse> restaurants});
}

/// @nodoc
class __$$RestaurantsResponseImplCopyWithImpl<$Res>
    extends _$RestaurantsResponseCopyWithImpl<$Res, _$RestaurantsResponseImpl>
    implements _$$RestaurantsResponseImplCopyWith<$Res> {
  __$$RestaurantsResponseImplCopyWithImpl(_$RestaurantsResponseImpl _value,
      $Res Function(_$RestaurantsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? count = null,
    Object? restaurants = null,
  }) {
    return _then(_$RestaurantsResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      restaurants: null == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantsResponseImpl implements _RestaurantsResponse {
  const _$RestaurantsResponseImpl(
      {required this.error,
      required this.message,
      required this.count,
      required final List<RestaurantResponse> restaurants})
      : _restaurants = restaurants;

  factory _$RestaurantsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantsResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
  @override
  final int count;
  final List<RestaurantResponse> _restaurants;
  @override
  List<RestaurantResponse> get restaurants {
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_restaurants);
  }

  @override
  String toString() {
    return 'RestaurantsResponse(error: $error, message: $message, count: $count, restaurants: $restaurants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantsResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message, count,
      const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsResponseImplCopyWith<_$RestaurantsResponseImpl> get copyWith =>
      __$$RestaurantsResponseImplCopyWithImpl<_$RestaurantsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantsResponseImplToJson(
      this,
    );
  }
}

abstract class _RestaurantsResponse implements RestaurantsResponse {
  const factory _RestaurantsResponse(
          {required final bool error,
          required final String message,
          required final int count,
          required final List<RestaurantResponse> restaurants}) =
      _$RestaurantsResponseImpl;

  factory _RestaurantsResponse.fromJson(Map<String, dynamic> json) =
      _$RestaurantsResponseImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  int get count;
  @override
  List<RestaurantResponse> get restaurants;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantsResponseImplCopyWith<_$RestaurantsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
