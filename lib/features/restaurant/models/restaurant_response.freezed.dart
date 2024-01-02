// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RestaurantResponse _$RestaurantResponseFromJson(Map<String, dynamic> json) {
  return _RestaurantResponse.fromJson(json);
}

/// @nodoc
mixin _$RestaurantResponse {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String get pictureId => throw _privateConstructorUsedError;
  List<CategoryResponse>? get categories => throw _privateConstructorUsedError;
  MenusResponse? get menus => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  List<CustomerReviewResponse>? get customerReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantResponseCopyWith<RestaurantResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantResponseCopyWith<$Res> {
  factory $RestaurantResponseCopyWith(
          RestaurantResponse value, $Res Function(RestaurantResponse) then) =
      _$RestaurantResponseCopyWithImpl<$Res, RestaurantResponse>;
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String city,
      String? address,
      String pictureId,
      List<CategoryResponse>? categories,
      MenusResponse? menus,
      double rating,
      List<CustomerReviewResponse>? customerReviews});

  $MenusResponseCopyWith<$Res>? get menus;
}

/// @nodoc
class _$RestaurantResponseCopyWithImpl<$Res, $Val extends RestaurantResponse>
    implements $RestaurantResponseCopyWith<$Res> {
  _$RestaurantResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? city = null,
    Object? address = freezed,
    Object? pictureId = null,
    Object? categories = freezed,
    Object? menus = freezed,
    Object? rating = null,
    Object? customerReviews = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureId: null == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>?,
      menus: freezed == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as MenusResponse?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      customerReviews: freezed == customerReviews
          ? _value.customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewResponse>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenusResponseCopyWith<$Res>? get menus {
    if (_value.menus == null) {
      return null;
    }

    return $MenusResponseCopyWith<$Res>(_value.menus!, (value) {
      return _then(_value.copyWith(menus: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RestaurantResponseImplCopyWith<$Res>
    implements $RestaurantResponseCopyWith<$Res> {
  factory _$$RestaurantResponseImplCopyWith(_$RestaurantResponseImpl value,
          $Res Function(_$RestaurantResponseImpl) then) =
      __$$RestaurantResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String description,
      String city,
      String? address,
      String pictureId,
      List<CategoryResponse>? categories,
      MenusResponse? menus,
      double rating,
      List<CustomerReviewResponse>? customerReviews});

  @override
  $MenusResponseCopyWith<$Res>? get menus;
}

/// @nodoc
class __$$RestaurantResponseImplCopyWithImpl<$Res>
    extends _$RestaurantResponseCopyWithImpl<$Res, _$RestaurantResponseImpl>
    implements _$$RestaurantResponseImplCopyWith<$Res> {
  __$$RestaurantResponseImplCopyWithImpl(_$RestaurantResponseImpl _value,
      $Res Function(_$RestaurantResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? city = null,
    Object? address = freezed,
    Object? pictureId = null,
    Object? categories = freezed,
    Object? menus = freezed,
    Object? rating = null,
    Object? customerReviews = freezed,
  }) {
    return _then(_$RestaurantResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      pictureId: null == pictureId
          ? _value.pictureId
          : pictureId // ignore: cast_nullable_to_non_nullable
              as String,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>?,
      menus: freezed == menus
          ? _value.menus
          : menus // ignore: cast_nullable_to_non_nullable
              as MenusResponse?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      customerReviews: freezed == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RestaurantResponseImpl implements _RestaurantResponse {
  const _$RestaurantResponseImpl(
      {required this.id,
      required this.name,
      required this.description,
      required this.city,
      this.address = '',
      required this.pictureId,
      final List<CategoryResponse>? categories = const [],
      this.menus = null,
      required this.rating,
      final List<CustomerReviewResponse>? customerReviews = const []})
      : _categories = categories,
        _customerReviews = customerReviews;

  factory _$RestaurantResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestaurantResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String city;
  @override
  @JsonKey()
  final String? address;
  @override
  final String pictureId;
  final List<CategoryResponse>? _categories;
  @override
  @JsonKey()
  List<CategoryResponse>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final MenusResponse? menus;
  @override
  final double rating;
  final List<CustomerReviewResponse>? _customerReviews;
  @override
  @JsonKey()
  List<CustomerReviewResponse>? get customerReviews {
    final value = _customerReviews;
    if (value == null) return null;
    if (_customerReviews is EqualUnmodifiableListView) return _customerReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RestaurantResponse(id: $id, name: $name, description: $description, city: $city, address: $address, pictureId: $pictureId, categories: $categories, menus: $menus, rating: $rating, customerReviews: $customerReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestaurantResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pictureId, pictureId) ||
                other.pictureId == pictureId) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.menus, menus) || other.menus == menus) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      city,
      address,
      pictureId,
      const DeepCollectionEquality().hash(_categories),
      menus,
      rating,
      const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestaurantResponseImplCopyWith<_$RestaurantResponseImpl> get copyWith =>
      __$$RestaurantResponseImplCopyWithImpl<_$RestaurantResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestaurantResponseImplToJson(
      this,
    );
  }
}

abstract class _RestaurantResponse implements RestaurantResponse {
  const factory _RestaurantResponse(
          {required final String id,
          required final String name,
          required final String description,
          required final String city,
          final String? address,
          required final String pictureId,
          final List<CategoryResponse>? categories,
          final MenusResponse? menus,
          required final double rating,
          final List<CustomerReviewResponse>? customerReviews}) =
      _$RestaurantResponseImpl;

  factory _RestaurantResponse.fromJson(Map<String, dynamic> json) =
      _$RestaurantResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get description;
  @override
  String get city;
  @override
  String? get address;
  @override
  String get pictureId;
  @override
  List<CategoryResponse>? get categories;
  @override
  MenusResponse? get menus;
  @override
  double get rating;
  @override
  List<CustomerReviewResponse>? get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$RestaurantResponseImplCopyWith<_$RestaurantResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(_$CategoryResponseImpl value,
          $Res Function(_$CategoryResponseImpl) then) =
      __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(_$CategoryResponseImpl _value,
      $Res Function(_$CategoryResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CategoryResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  const _$CategoryResponseImpl({required this.name});

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CategoryResponse(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  const factory _CategoryResponse({required final String name}) =
      _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenusResponse _$MenusResponseFromJson(Map<String, dynamic> json) {
  return _MenusResponse.fromJson(json);
}

/// @nodoc
mixin _$MenusResponse {
  List<CategoryResponse> get foods => throw _privateConstructorUsedError;
  List<CategoryResponse> get drinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenusResponseCopyWith<MenusResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenusResponseCopyWith<$Res> {
  factory $MenusResponseCopyWith(
          MenusResponse value, $Res Function(MenusResponse) then) =
      _$MenusResponseCopyWithImpl<$Res, MenusResponse>;
  @useResult
  $Res call({List<CategoryResponse> foods, List<CategoryResponse> drinks});
}

/// @nodoc
class _$MenusResponseCopyWithImpl<$Res, $Val extends MenusResponse>
    implements $MenusResponseCopyWith<$Res> {
  _$MenusResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_value.copyWith(
      foods: null == foods
          ? _value.foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>,
      drinks: null == drinks
          ? _value.drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenusResponseImplCopyWith<$Res>
    implements $MenusResponseCopyWith<$Res> {
  factory _$$MenusResponseImplCopyWith(
          _$MenusResponseImpl value, $Res Function(_$MenusResponseImpl) then) =
      __$$MenusResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryResponse> foods, List<CategoryResponse> drinks});
}

/// @nodoc
class __$$MenusResponseImplCopyWithImpl<$Res>
    extends _$MenusResponseCopyWithImpl<$Res, _$MenusResponseImpl>
    implements _$$MenusResponseImplCopyWith<$Res> {
  __$$MenusResponseImplCopyWithImpl(
      _$MenusResponseImpl _value, $Res Function(_$MenusResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foods = null,
    Object? drinks = null,
  }) {
    return _then(_$MenusResponseImpl(
      foods: null == foods
          ? _value._foods
          : foods // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>,
      drinks: null == drinks
          ? _value._drinks
          : drinks // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenusResponseImpl implements _MenusResponse {
  const _$MenusResponseImpl(
      {required final List<CategoryResponse> foods,
      required final List<CategoryResponse> drinks})
      : _foods = foods,
        _drinks = drinks;

  factory _$MenusResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenusResponseImplFromJson(json);

  final List<CategoryResponse> _foods;
  @override
  List<CategoryResponse> get foods {
    if (_foods is EqualUnmodifiableListView) return _foods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foods);
  }

  final List<CategoryResponse> _drinks;
  @override
  List<CategoryResponse> get drinks {
    if (_drinks is EqualUnmodifiableListView) return _drinks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_drinks);
  }

  @override
  String toString() {
    return 'MenusResponse(foods: $foods, drinks: $drinks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenusResponseImpl &&
            const DeepCollectionEquality().equals(other._foods, _foods) &&
            const DeepCollectionEquality().equals(other._drinks, _drinks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_foods),
      const DeepCollectionEquality().hash(_drinks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenusResponseImplCopyWith<_$MenusResponseImpl> get copyWith =>
      __$$MenusResponseImplCopyWithImpl<_$MenusResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenusResponseImplToJson(
      this,
    );
  }
}

abstract class _MenusResponse implements MenusResponse {
  const factory _MenusResponse(
      {required final List<CategoryResponse> foods,
      required final List<CategoryResponse> drinks}) = _$MenusResponseImpl;

  factory _MenusResponse.fromJson(Map<String, dynamic> json) =
      _$MenusResponseImpl.fromJson;

  @override
  List<CategoryResponse> get foods;
  @override
  List<CategoryResponse> get drinks;
  @override
  @JsonKey(ignore: true)
  _$$MenusResponseImplCopyWith<_$MenusResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
