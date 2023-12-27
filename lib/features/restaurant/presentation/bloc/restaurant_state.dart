part of 'restaurant_bloc.dart';

sealed class RestaurantState extends Equatable {
  const RestaurantState();

  @override
  List<Object> get props => [];
}

final class RestaurantInitial extends RestaurantState {}

final class RestaurantLoading extends RestaurantState {}

class RestaurantLoaded extends RestaurantState {
  final RestaurantListResponseModel restaurantListResponseModel;
  const RestaurantLoaded(this.restaurantListResponseModel);
}

class RestaurantError extends RestaurantState {
  final String? message;
  const RestaurantError(this.message);
}
