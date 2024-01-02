// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantsResponseImpl _$$RestaurantsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantsResponseImpl(
      error: json['error'] as bool,
      message: json['message'] as String,
      count: json['count'] as int,
      restaurants: (json['restaurants'] as List<dynamic>)
          .map((e) => RestaurantResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RestaurantsResponseImplToJson(
        _$RestaurantsResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'count': instance.count,
      'restaurants': instance.restaurants,
    };
