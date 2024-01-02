// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerReviewResponse _$CustomerReviewResponseFromJson(
    Map<String, dynamic> json) {
  return _CustomerReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$CustomerReviewResponse {
  String get name => throw _privateConstructorUsedError;
  String get review => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerReviewResponseCopyWith<CustomerReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerReviewResponseCopyWith<$Res> {
  factory $CustomerReviewResponseCopyWith(CustomerReviewResponse value,
          $Res Function(CustomerReviewResponse) then) =
      _$CustomerReviewResponseCopyWithImpl<$Res, CustomerReviewResponse>;
  @useResult
  $Res call({String name, String review, String date});
}

/// @nodoc
class _$CustomerReviewResponseCopyWithImpl<$Res,
        $Val extends CustomerReviewResponse>
    implements $CustomerReviewResponseCopyWith<$Res> {
  _$CustomerReviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? review = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerReviewResponseImplCopyWith<$Res>
    implements $CustomerReviewResponseCopyWith<$Res> {
  factory _$$CustomerReviewResponseImplCopyWith(
          _$CustomerReviewResponseImpl value,
          $Res Function(_$CustomerReviewResponseImpl) then) =
      __$$CustomerReviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String review, String date});
}

/// @nodoc
class __$$CustomerReviewResponseImplCopyWithImpl<$Res>
    extends _$CustomerReviewResponseCopyWithImpl<$Res,
        _$CustomerReviewResponseImpl>
    implements _$$CustomerReviewResponseImplCopyWith<$Res> {
  __$$CustomerReviewResponseImplCopyWithImpl(
      _$CustomerReviewResponseImpl _value,
      $Res Function(_$CustomerReviewResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? review = null,
    Object? date = null,
  }) {
    return _then(_$CustomerReviewResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      review: null == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerReviewResponseImpl implements _CustomerReviewResponse {
  const _$CustomerReviewResponseImpl(
      {required this.name, required this.review, required this.date});

  factory _$CustomerReviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomerReviewResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String review;
  @override
  final String date;

  @override
  String toString() {
    return 'CustomerReviewResponse(name: $name, review: $review, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerReviewResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, review, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerReviewResponseImplCopyWith<_$CustomerReviewResponseImpl>
      get copyWith => __$$CustomerReviewResponseImplCopyWithImpl<
          _$CustomerReviewResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerReviewResponseImplToJson(
      this,
    );
  }
}

abstract class _CustomerReviewResponse implements CustomerReviewResponse {
  const factory _CustomerReviewResponse(
      {required final String name,
      required final String review,
      required final String date}) = _$CustomerReviewResponseImpl;

  factory _CustomerReviewResponse.fromJson(Map<String, dynamic> json) =
      _$CustomerReviewResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get review;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$CustomerReviewResponseImplCopyWith<_$CustomerReviewResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
