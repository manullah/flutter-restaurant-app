import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_service.dart';
import 'package:restaurant_app/features/restaurant/models/restaurants_response.dart';

part 'get_restaurants_state.dart';
part 'get_restaurants_cubit.freezed.dart';

class GetRestaurantsCubit extends Cubit<GetRestaurantsState> {
  GetRestaurantsCubit(this.restaurantApiService) : super(const _Loading());
  final RestaurantApiService restaurantApiService;

  Future<void> reFetchRestaurants() async {
    emit(const _Loading());
    fetchRestaurants();
  }

  Future<void> fetchRestaurants() async {
    final data = await restaurantApiService.fetchRestaurants();

    if (data.error) {
      emit(_Failure(data.message));
    } else {
      emit(_Success(data));
    }
  }
}
