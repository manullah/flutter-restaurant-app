part of 'search_restaurants_cubit.dart';

@freezed
class SearchRestaurantsState with _$SearchRestaurantsState {
  const factory SearchRestaurantsState.loading() = _Loading;
  const factory SearchRestaurantsState.success(RestaurantsSearchResponse data) = _Success;
  const factory SearchRestaurantsState.failure(String message) = _Failure;
}
