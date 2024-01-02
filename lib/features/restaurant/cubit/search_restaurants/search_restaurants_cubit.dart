import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_service.dart';
import 'package:restaurant_app/features/restaurant/models/restaurants_search_response.dart';

part 'search_restaurants_state.dart';
part 'search_restaurants_cubit.freezed.dart';

class SearchRestaurantsCubit extends Cubit<SearchRestaurantsState> {
  SearchRestaurantsCubit(this.restaurantApiService) : super(const _Loading());
  final RestaurantApiService restaurantApiService;

  Future<void> fetchRestaurant(String search) async {
    emit(const _Loading());
    final data = await restaurantApiService.searchRestaurants(search);

    if (data.error) {
      emit(_Failure(data.message ?? ''));
    } else {
      emit(_Success(data));
    }
  }
}
