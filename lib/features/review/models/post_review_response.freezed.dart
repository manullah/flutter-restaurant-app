// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_review_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PostReviewResponse _$PostReviewResponseFromJson(Map<String, dynamic> json) {
  return _PostReviewResponse.fromJson(json);
}

/// @nodoc
mixin _$PostReviewResponse {
  bool get error => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<CustomerReviewResponse>? get customerReviews =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostReviewResponseCopyWith<PostReviewResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostReviewResponseCopyWith<$Res> {
  factory $PostReviewResponseCopyWith(
          PostReviewResponse value, $Res Function(PostReviewResponse) then) =
      _$PostReviewResponseCopyWithImpl<$Res, PostReviewResponse>;
  @useResult
  $Res call(
      {bool error,
      String message,
      List<CustomerReviewResponse>? customerReviews});
}

/// @nodoc
class _$PostReviewResponseCopyWithImpl<$Res, $Val extends PostReviewResponse>
    implements $PostReviewResponseCopyWith<$Res> {
  _$PostReviewResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? customerReviews = freezed,
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
      customerReviews: freezed == customerReviews
          ? _value.customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostReviewResponseImplCopyWith<$Res>
    implements $PostReviewResponseCopyWith<$Res> {
  factory _$$PostReviewResponseImplCopyWith(_$PostReviewResponseImpl value,
          $Res Function(_$PostReviewResponseImpl) then) =
      __$$PostReviewResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool error,
      String message,
      List<CustomerReviewResponse>? customerReviews});
}

/// @nodoc
class __$$PostReviewResponseImplCopyWithImpl<$Res>
    extends _$PostReviewResponseCopyWithImpl<$Res, _$PostReviewResponseImpl>
    implements _$$PostReviewResponseImplCopyWith<$Res> {
  __$$PostReviewResponseImplCopyWithImpl(_$PostReviewResponseImpl _value,
      $Res Function(_$PostReviewResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? message = null,
    Object? customerReviews = freezed,
  }) {
    return _then(_$PostReviewResponseImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      customerReviews: freezed == customerReviews
          ? _value._customerReviews
          : customerReviews // ignore: cast_nullable_to_non_nullable
              as List<CustomerReviewResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostReviewResponseImpl implements _PostReviewResponse {
  const _$PostReviewResponseImpl(
      {required this.error,
      required this.message,
      final List<CustomerReviewResponse>? customerReviews = const []})
      : _customerReviews = customerReviews;

  factory _$PostReviewResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostReviewResponseImplFromJson(json);

  @override
  final bool error;
  @override
  final String message;
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
    return 'PostReviewResponse(error: $error, message: $message, customerReviews: $customerReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReviewResponseImpl &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._customerReviews, _customerReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, error, message,
      const DeepCollectionEquality().hash(_customerReviews));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostReviewResponseImplCopyWith<_$PostReviewResponseImpl> get copyWith =>
      __$$PostReviewResponseImplCopyWithImpl<_$PostReviewResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostReviewResponseImplToJson(
      this,
    );
  }
}

abstract class _PostReviewResponse implements PostReviewResponse {
  const factory _PostReviewResponse(
          {required final bool error,
          required final String message,
          final List<CustomerReviewResponse>? customerReviews}) =
      _$PostReviewResponseImpl;

  factory _PostReviewResponse.fromJson(Map<String, dynamic> json) =
      _$PostReviewResponseImpl.fromJson;

  @override
  bool get error;
  @override
  String get message;
  @override
  List<CustomerReviewResponse>? get customerReviews;
  @override
  @JsonKey(ignore: true)
  _$$PostReviewResponseImplCopyWith<_$PostReviewResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
