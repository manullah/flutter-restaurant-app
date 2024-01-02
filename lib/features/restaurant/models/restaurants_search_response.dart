import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

import 'package:restaurant_app/features/restaurant/models/restaurant_response.dart';

part 'restaurants_search_response.freezed.dart';
part 'restaurants_search_response.g.dart';

RestaurantsSearchResponse restaurantsSearchResponseFromJson(String str) => RestaurantsSearchResponse.fromJson(json.decode(str));

String restaurantsSearchResponseToJson(RestaurantsSearchResponse data) => json.encode(data.toJson());

@freezed
class RestaurantsSearchResponse with _$RestaurantsSearchResponse {
  const factory RestaurantsSearchResponse({
    required bool error,
    required int founded,
    @Default('') String? message,
    @Default([]) List<RestaurantResponse>? restaurants,
  }) = _RestaurantsSearchResponse;

  factory RestaurantsSearchResponse.fromJson(Map<String, dynamic> json) => _$RestaurantsSearchResponseFromJson(json);

  factory RestaurantsSearchResponse.withError(String errorMessage) => RestaurantsSearchResponse(
        error: true,
        founded: 0,
        message: errorMessage,
        restaurants: [],
      );
}
