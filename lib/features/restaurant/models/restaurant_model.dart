import 'package:restaurant_app/features/restaurant/models/menu_model.dart';

class RestaurantModel {
  String id;
  String name;
  String description;
  String pictureId;
  String city;
  double rating;
  MenuModel? menus;

  RestaurantModel({
    required this.id,
    required this.name,
    required this.description,
    required this.pictureId,
    required this.city,
    required this.rating,
    this.menus,
  });

  // -- Empty state
  static RestaurantModel empty() {
    return RestaurantModel(
      id: '',
      name: '',
      description: '',
      city: '',
      pictureId: '',
      rating: 0,
    );
  }

  // -- Convert from JSON
  factory RestaurantModel.fromJson(Map<String, dynamic> map) {
    if (map.isEmpty) return RestaurantModel.empty();

    return RestaurantModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      pictureId: map['pictureId'] ?? '',
      city: map['city'] ?? '',
      rating: double.parse((map['rating'] ?? 0).toString()),
      menus: MenuModel.fromJson(map['menus']),
    );
  }
}
