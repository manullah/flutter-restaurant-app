import 'package:restaurant_app/core/models/name_model.dart';
import 'package:restaurant_app/features/restaurant/models/menu_model.dart';
import 'package:restaurant_app/features/restaurant/models/review_model.dart';

class RestaurantDetailsModel {
  String id;
  String name;
  String description;
  String city;
  String? address;
  String pictureId;
  List<NameModel>? categories;
  MenuModel? menus;
  double rating;
  List<ReviewModel>? customerReviews;

  RestaurantDetailsModel({
    required this.id,
    required this.name,
    required this.description,
    required this.city,
    this.address,
    required this.pictureId,
    this.categories,
    this.menus,
    required this.rating,
    this.customerReviews,
  });

  factory RestaurantDetailsModel.fromJson(Map<String, dynamic> json) {
    if (json.isEmpty) return RestaurantDetailsModel.empty();

    return RestaurantDetailsModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      city: json['city'] ?? '',
      address: json['address'] ?? '',
      pictureId: json['pictureId'] ?? '',
      // categories: (json['categories'] as List)!.map((e) => NameModel.fromJson(e)).toList() ?? [],
      // menus: MenuModel.fromJson(json['menus']),
      rating: double.parse((json['rating'] ?? 0).toString()),
      // customerReviews: (json['customerReviews'] as List).map((e) => ReviewModel.fromJson(e)).toList(),
    );
  }

  // -- Empty state
  static RestaurantDetailsModel empty() => RestaurantDetailsModel(
        id: '',
        name: '',
        description: '',
        city: '',
        pictureId: '',
        address: '',
        categories: [],
        menus: MenuModel.empty(),
        rating: 0,
        customerReviews: [],
      );
}
