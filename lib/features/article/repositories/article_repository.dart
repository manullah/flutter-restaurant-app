import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:restaurant_app/features/article/models/article_model.dart';
import 'package:restaurant_app/utils/constants/resources.dart';

class ArticleRepository {
  Future<ArticleModel> getRestaurants() async {
    final String response = await rootBundle.loadString(TResources.restaurantsJson);
    final data = await json.decode(response);

    return ArticleModel.fromJson(data['restaurants']);
  }
}
