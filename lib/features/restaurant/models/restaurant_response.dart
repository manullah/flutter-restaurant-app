import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:restaurant_app/features/review/models/customer_review_response.dart';

part 'restaurant_response.freezed.dart';
part 'restaurant_response.g.dart';

RestaurantResponse restaurantResponseFromJson(String str) => RestaurantResponse.fromJson(json.decode(str));

String restaurantResponseToJson(RestaurantResponse data) => json.encode(data.toJson());

@freezed
class RestaurantResponse with _$RestaurantResponse {
  const factory RestaurantResponse({
    required String id,
    required String name,
    required String description,
    required String city,
    @Default('') String? address,
    required String pictureId,
    @Default([]) List<CategoryResponse>? categories,
    @Default(null) MenusResponse? menus,
    required double rating,
    @Default([]) List<CustomerReviewResponse>? customerReviews,
  }) = _RestaurantResponse;

  factory RestaurantResponse.fromJson(Map<String, dynamic> json) => _$RestaurantResponseFromJson(json);
}

@freezed
class CategoryResponse with _$CategoryResponse {
  const factory CategoryResponse({
    required String name,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => _$CategoryResponseFromJson(json);
}

@freezed
class MenusResponse with _$MenusResponse {
  const factory MenusResponse({
    required List<CategoryResponse> foods,
    required List<CategoryResponse> drinks,
  }) = _MenusResponse;

  factory MenusResponse.fromJson(Map<String, dynamic> json) => _$MenusResponseFromJson(json);
}
