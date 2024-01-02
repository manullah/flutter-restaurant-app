part of 'get_restaurant_cubit.dart';

@freezed
class GetRestaurantState with _$GetRestaurantState {
  const factory GetRestaurantState.loading() = _Loading;
  const factory GetRestaurantState.success(RestaurantDetailsResponse data) = _Success;
  const factory GetRestaurantState.failure(String message) = _Failure;
}
