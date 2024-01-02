// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantDetailsResponseImpl _$$RestaurantDetailsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantDetailsResponseImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      restaurant: json['restaurant'] == null
          ? null
          : RestaurantResponse.fromJson(
              json['restaurant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RestaurantDetailsResponseImplToJson(
        _$RestaurantDetailsResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'restaurant': instance.restaurant,
    };
