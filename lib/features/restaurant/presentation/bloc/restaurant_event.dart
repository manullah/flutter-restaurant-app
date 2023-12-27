part of 'restaurant_bloc.dart';

sealed class RestaurantEvent extends Equatable {
  const RestaurantEvent();

  @override
  List<Object> get props => [];
}

class GetRestaurantList extends RestaurantEvent {}

class GetRestaurantDetails extends RestaurantEvent {}
