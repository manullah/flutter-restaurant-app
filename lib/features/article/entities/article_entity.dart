import 'package:equatable/equatable.dart';
import 'package:restaurant_app/features/article/entities/menu_entity.dart';

class ArticleEntity extends Equatable {
  final String? id;
  final String? name;
  final String? description;
  final String? pictureId;
  final String? city;
  final double? rating;
  final List<MenuEntity>? menus;

  const ArticleEntity({
    this.id,
    this.name,
    this.description,
    this.pictureId,
    this.city,
    this.rating,
    this.menus,
  });

  @override
  List<Object?> get props {
    return [
      id,
      name,
      description,
      pictureId,
      city,
      rating,
      menus,
    ];
  }
}
