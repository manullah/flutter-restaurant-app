import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:restaurant_app/features/review/models/customer_review_response.dart';

part 'post_review_response.freezed.dart';
part 'post_review_response.g.dart';

PostReviewResponse postReviewResponseFromJson(String str) => PostReviewResponse.fromJson(json.decode(str));

String postReviewResponseToJson(PostReviewResponse data) => json.encode(data.toJson());

@freezed
class PostReviewResponse with _$PostReviewResponse {
  const factory PostReviewResponse({
    required bool error,
    required String message,
    @Default([]) List<CustomerReviewResponse>? customerReviews,
  }) = _PostReviewResponse;

  factory PostReviewResponse.fromJson(Map<String, dynamic> json) => _$PostReviewResponseFromJson(json);

  factory PostReviewResponse.withError(String errorMessage) => PostReviewResponse(
        error: true,
        message: errorMessage,
        customerReviews: [],
      );
}
