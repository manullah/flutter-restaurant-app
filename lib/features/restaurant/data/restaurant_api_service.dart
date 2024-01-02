import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_details_response.dart';
import 'package:restaurant_app/features/restaurant/models/restaurants_response.dart';
import 'package:restaurant_app/features/restaurant/models/restaurants_search_response.dart';

class RestaurantApiService {
  final Dio _dio = Dio();
  final String url = 'https://restaurant-api.dicoding.dev';

  Future<RestaurantsResponse> fetchRestaurants() async {
    try {
      Response response = await _dio.get('$url/list');

      return RestaurantsResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");

      return RestaurantsResponse.withError("Failed to load data.");
    }
  }

  Future<RestaurantDetailsResponse> fetchRestaurantDetails(String id) async {
    try {
      Response response = await _dio.get('$url/detail/$id');

      return RestaurantDetailsResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");

      return RestaurantDetailsResponse.withError("Failed to load data.");
    }
  }

  Future<RestaurantsSearchResponse> searchRestaurants(String search) async {
    try {
      Response response = await _dio.get(
        '$url/search',
        queryParameters: {'q': search},
      );

      return RestaurantsSearchResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");

      return RestaurantsSearchResponse.withError("Failed to load data.");
    }
  }
}
