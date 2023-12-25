import 'package:restaurant_app/core/models/name_model.dart';

enum MenuType { food, drink }

class MenuModel {
  List<NameModel> foods;
  List<NameModel> drinks;

  MenuModel({
    required this.foods,
    required this.drinks,
  });

  // -- Empty state
  static MenuModel empty() => MenuModel(foods: [], drinks: []);

  factory MenuModel.fromJson(Map<String, dynamic> map) {
    if (map.isEmpty) return MenuModel.empty();

    return MenuModel(
      foods: (map['foods'] as List<dynamic>).map((e) => NameModel.fromJson(e)).toList(),
      drinks: (map['drinks'] as List<dynamic>).map((e) => NameModel.fromJson(e)).toList(),
    );
  }
}
