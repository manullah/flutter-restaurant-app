import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'customer_review_response.freezed.dart';
part 'customer_review_response.g.dart';

CustomerReviewResponse customerReviewResponseFromJson(String str) => CustomerReviewResponse.fromJson(json.decode(str));

String customerReviewResponseToJson(CustomerReviewResponse data) => json.encode(data.toJson());

@freezed
class CustomerReviewResponse with _$CustomerReviewResponse {
  const factory CustomerReviewResponse({
    required String name,
    required String review,
    required String date,
  }) = _CustomerReviewResponse;

  factory CustomerReviewResponse.fromJson(Map<String, dynamic> json) => _$CustomerReviewResponseFromJson(json);
}
