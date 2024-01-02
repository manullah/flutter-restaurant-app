part of 'get_restaurants_cubit.dart';

@freezed
class GetRestaurantsState with _$GetRestaurantsState {
  const factory GetRestaurantsState.loading() = _Loading;
  const factory GetRestaurantsState.success(RestaurantsResponse data) = _Success;
  const factory GetRestaurantsState.failure(String message) = _Failure;
}
