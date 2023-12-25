import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:restaurant_app/features/article/models/restaurant_model.dart';
import 'package:restaurant_app/utils/constants/resource_strings.dart';

class ArticleRepository {
  Future<List<RestaurantModel>> getRestaurants() async {
    final String response = await rootBundle.loadString(TResourceStrings.restaurantsJson);
    final data = await json.decode(response);

    return (data['restaurants'] as List<dynamic>).map((e) => RestaurantModel.fromJson(e)).toList();
  }
}
