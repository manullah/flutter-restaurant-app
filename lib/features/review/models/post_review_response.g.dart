// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_review_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostReviewResponseImpl _$$PostReviewResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PostReviewResponseImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      customerReviews: (json['customerReviews'] as List<dynamic>?)
              ?.map((e) =>
                  CustomerReviewResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PostReviewResponseImplToJson(
        _$PostReviewResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'customerReviews': instance.customerReviews,
    };
