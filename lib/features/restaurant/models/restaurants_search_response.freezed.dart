// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurants_search_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantsSearchResponse _$RestaurantsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _RestaurantsSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$RestaurantsSearchResponse {
  bool get error => throw _privateConstructorUsedError;
  int get founded => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<RestaurantResponse>? get restaurants =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantsSearchResponseCopyWith<RestaurantsSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantsSearchResponseCopyWith<$Res> {
  factory $RestaurantsSearchResponseCopyWith(RestaurantsSearchResponse value,
          $Res Function(RestaurantsSearchResponse) then) =
      _$RestaurantsSearchResponseCopyWithImpl<$Res, RestaurantsSearchResponse>;
  @useResult
  $Res call(
      {bool error,
      int founded,
      String? message,
      List<RestaurantResponse>? restaurants});
}

/// @nodoc
class _$RestaurantsSearchResponseCopyWithImpl<$Res,
        $Val extends RestaurantsSearchResponse>
    implements $RestaurantsSearchResponseCopyWith<$Res> {
  _$RestaurantsSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? founded = null,
    Object? message = freezed,
    Object? restaurants = freezed,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurants: freezed == restaurants
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RestaurantsSearchResponseImplCopyWith<$Res>
    implements $RestaurantsSearchResponseCopyWith<$Res> {
  factory _$$RestaurantsSearchResponseImplCopyWith(
          _$RestaurantsSearchResponseImpl value,
          $Res Function(_$RestaurantsSearchResponseImpl) then) =
      __$$RestaurantsSearchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool error,
      int founded,
      String? message,
      List<RestaurantResponse>? restaurants});
}

/// @nodoc
class __$$RestaurantsSearchResponseImplCopyWithImpl<$Res>
    extends _$RestaurantsSearchResponseCopyWithImpl<$Res,
        _$RestaurantsSearchResponseImpl>
    implements _$$RestaurantsSearchResponseImplCopyWith<$Res> {
  __$$RestaurantsSearchResponseImplCopyWithImpl(
      _$RestaurantsSearchResponseImpl _value,
      $Res Function(_$RestaurantsSearchResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? founded = null,
    Object? message = freezed,
    Object? restaurants = freezed,
  }) {
    return _then(_$RestaurantsSearchResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      founded: null == founded
          ? _value.founded
          : founded // ignore: cast_nullable_to_non_nullable
              as int,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurants: freezed == restaurants
          ? _value._restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<RestaurantResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantsSearchResponseImpl implements _RestaurantsSearchResponse {
  const _$RestaurantsSearchResponseImpl(
      {required this.error,
      required this.founded,
      this.message = '',
      final List<RestaurantResponse>? restaurants = const []})
      : _restaurants = restaurants;

  factory _$RestaurantsSearchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantsSearchResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final int founded;
  @override
  @JsonKey()
  final String? message;
  final List<RestaurantResponse>? _restaurants;
  @override
  @JsonKey()
  List<RestaurantResponse>? get restaurants {
    final value = _restaurants;
    if (value == null) return null;
    if (_restaurants is EqualUnmodifiableListView) return _restaurants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantsSearchResponse(error: $error, founded: $founded, message: $message, restaurants: $restaurants)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantsSearchResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.founded, founded) || other.founded == founded) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._restaurants, _restaurants));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, founded, message,
      const DeepCollectionEquality().hash(_restaurants));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantsSearchResponseImplCopyWith<_$RestaurantsSearchResponseImpl>
      get copyWith => __$$RestaurantsSearchResponseImplCopyWithImpl<
          _$RestaurantsSearchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantsSearchResponseImplToJson(
      this,
    );
  }
}

abstract class _RestaurantsSearchResponse implements RestaurantsSearchResponse {
  const factory _RestaurantsSearchResponse(
          {required final bool error,
          required final int founded,
          final String? message,
          final List<RestaurantResponse>? restaurants}) =
      _$RestaurantsSearchResponseImpl;

  factory _RestaurantsSearchResponse.fromJson(Map<String, dynamic> json) =
      _$RestaurantsSearchResponseImpl.fromJson;

  @override
  bool get error;
  @override
  int get founded;
  @override
  String? get message;
  @override
  List<RestaurantResponse>? get restaurants;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantsSearchResponseImplCopyWith<_$RestaurantsSearchResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
