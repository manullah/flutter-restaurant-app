// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantResponseImpl _$$RestaurantResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantResponseImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      city: json['city'] as String,
      address: json['address'] as String? ?? '',
      pictureId: json['pictureId'] as String,
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      menus: json['menus'] == null
          ? null
          : MenusResponse.fromJson(json['menus'] as Map<String, dynamic>),
      rating: (json['rating'] as num).toDouble(),
      customerReviews: (json['customerReviews'] as List<dynamic>?)
              ?.map((e) =>
                  CustomerReviewResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RestaurantResponseImplToJson(
        _$RestaurantResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'city': instance.city,
      'address': instance.address,
      'pictureId': instance.pictureId,
      'categories': instance.categories,
      'menus': instance.menus,
      'rating': instance.rating,
      'customerReviews': instance.customerReviews,
    };

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$MenusResponseImpl _$$MenusResponseImplFromJson(Map<String, dynamic> json) =>
    _$MenusResponseImpl(
      foods: (json['foods'] as List<dynamic>)
          .map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      drinks: (json['drinks'] as List<dynamic>)
          .map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MenusResponseImplToJson(_$MenusResponseImpl instance) =>
    <String, dynamic>{
      'foods': instance.foods,
      'drinks': instance.drinks,
    };
