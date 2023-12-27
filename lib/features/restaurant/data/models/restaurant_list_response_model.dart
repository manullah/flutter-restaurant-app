import 'package:restaurant_app/features/restaurant/models/restaurant_details_model.dart';

class RestaurantListResponseModel {
  bool error;
  String message;
  int count;
  List<RestaurantDetailsModel>? restaurants;

  RestaurantListResponseModel({
    required this.error,
    required this.message,
    required this.count,
    this.restaurants,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['error'] = error;
    data['message'] = message;
    data['count'] = count;
    data['restaurants'] = restaurants;

    return data;
  }

  factory RestaurantListResponseModel.fromJson(Map<String, dynamic> json) {
    if (json.isEmpty) return RestaurantListResponseModel.empty();

    return RestaurantListResponseModel(
      error: json['error'] ?? '',
      message: json['message'] ?? '',
      count: json['count'] ?? '',
      restaurants: (json['restaurants'] as List).map((e) => RestaurantDetailsModel.fromJson(e)).toList(),
    );
  }

  // -- Empty state
  static RestaurantListResponseModel empty() => RestaurantListResponseModel(
        error: true,
        message: '',
        count: 0,
        restaurants: [],
      );

  static RestaurantListResponseModel withError(String errorMessage) => RestaurantListResponseModel(
        count: 0,
        error: true,
        message: errorMessage,
        restaurants: [],
      );
}
