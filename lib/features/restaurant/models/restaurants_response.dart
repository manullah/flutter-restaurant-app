import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:restaurant_app/features/restaurant/models/restaurant_response.dart';

part 'restaurants_response.freezed.dart';
part 'restaurants_response.g.dart';

RestaurantsResponse restaurantsResponseFromJson(String str) => RestaurantsResponse.fromJson(json.decode(str));

String restaurantsResponseToJson(RestaurantsResponse data) => json.encode(data.toJson());

@freezed
class RestaurantsResponse with _$RestaurantsResponse {
  const factory RestaurantsResponse({
    required bool error,
    required String message,
    required int count,
    required List<RestaurantResponse> restaurants,
  }) = _RestaurantsResponse;

  factory RestaurantsResponse.fromJson(Map<String, dynamic> json) => _$RestaurantsResponseFromJson(json);

  factory RestaurantsResponse.withError(String errorMessage) => RestaurantsResponse(
        count: 0,
        error: true,
        message: errorMessage,
        restaurants: [],
      );
}
