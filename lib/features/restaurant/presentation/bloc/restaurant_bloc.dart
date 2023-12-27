import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:restaurant_app/features/restaurant/data/models/restaurant_list_response_model.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_repository.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_details_model.dart';

part 'restaurant_event.dart';
part 'restaurant_state.dart';

class RestaurantBloc extends Bloc<RestaurantEvent, RestaurantState> {
  RestaurantBloc() : super(RestaurantInitial()) {
    final RestaurantApiRepository restaurantApiRepository = RestaurantApiRepository();

    on<GetRestaurantList>((event, emit) async {
      try {
        emit(RestaurantLoading());

        final mList = await restaurantApiRepository.fetchCovidList();

        emit(RestaurantLoaded(mList));

        // if (!mList.error) {
        //   emit(RestaurantError(mList.message));
        // }
      } on NetworkError {
        emit(const RestaurantError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
