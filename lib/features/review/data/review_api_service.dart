import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/features/review/models/post_review_response.dart';

class ReviewApiService {
  final Dio _dio = Dio();
  final String url = 'https://restaurant-api.dicoding.dev';

  Future<PostReviewResponse> postReview(String id, String name, String review) async {
    try {
      Response response = await _dio.post(
        '$url/review',
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
        data: {
          'id': id,
          'name': name,
          'review': review,
        },
      );

      return PostReviewResponse.fromJson(response.data);
    } catch (error, stacktrace) {
      debugPrint("Exception occured: $error stackTrace: $stacktrace");

      return PostReviewResponse.withError("Failed to load data.");
    }
  }
}
