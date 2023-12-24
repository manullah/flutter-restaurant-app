import 'package:restaurant_app/features/article/entities/article_entity.dart';
import 'package:restaurant_app/features/article/entities/menu_entity.dart';

class ArticleModel extends ArticleEntity {
  const ArticleModel({
    String? id,
    String? name,
    String? description,
    String? pictureId,
    String? city,
    double? rating,
    List<MenuEntity>? menus,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      pictureId: map['pictureId'] ?? '',
      city: map['city'] ?? '',
      rating: map['rating'] ?? '',
      menus: map['menus'] ?? [],
    );
  }
}
