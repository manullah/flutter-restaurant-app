import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:restaurant_app/features/restaurant/models/restaurant_response.dart';

part 'restaurant_details_response.freezed.dart';
part 'restaurant_details_response.g.dart';

RestaurantDetailsResponse restaurantDetailsResponseFromJson(String str) => RestaurantDetailsResponse.fromJson(json.decode(str));

String restaurantDetailsResponseToJson(RestaurantDetailsResponse data) => json.encode(data.toJson());

@freezed
class RestaurantDetailsResponse with _$RestaurantDetailsResponse {
  const factory RestaurantDetailsResponse({
    required bool error,
    required String message,
    @Default(null) RestaurantResponse? restaurant,
  }) = _RestaurantDetailsResponse;

  factory RestaurantDetailsResponse.fromJson(Map<String, dynamic> json) => _$RestaurantDetailsResponseFromJson(json);

  factory RestaurantDetailsResponse.withError(String errorMessage) => RestaurantDetailsResponse(
        error: true,
        message: errorMessage,
        restaurant: null,
      );
}
