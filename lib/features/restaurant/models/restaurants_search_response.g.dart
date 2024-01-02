// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RestaurantsSearchResponseImpl _$$RestaurantsSearchResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RestaurantsSearchResponseImpl(
      error: json['error'] as bool,
      founded: json['founded'] as int,
      message: json['message'] as String? ?? '',
      restaurants: (json['restaurants'] as List<dynamic>?)
              ?.map(
                  (e) => RestaurantResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$RestaurantsSearchResponseImplToJson(
        _$RestaurantsSearchResponseImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'founded': instance.founded,
      'message': instance.message,
      'restaurants': instance.restaurants,
    };
