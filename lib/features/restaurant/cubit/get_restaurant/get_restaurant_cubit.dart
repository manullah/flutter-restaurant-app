import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_service.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_details_response.dart';

part 'get_restaurant_state.dart';
part 'get_restaurant_cubit.freezed.dart';

class GetRestaurantCubit extends Cubit<GetRestaurantState> {
  GetRestaurantCubit(this.restaurantApiService) : super(const _Loading());
  final RestaurantApiService restaurantApiService;

  Future<void> fetchRestaurant(String id) async {
    final data = await restaurantApiService.fetchRestaurantDetails(id);

    if (data.error) {
      emit(_Failure(data.message));
    } else {
      emit(_Success(data));
    }
  }
}
