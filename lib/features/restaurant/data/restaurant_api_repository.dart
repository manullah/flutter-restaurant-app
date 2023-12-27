import 'package:restaurant_app/features/restaurant/data/models/restaurant_list_response_model.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_providers.dart';

class RestaurantApiRepository {
  final _provider = RestaurantApiProvider();

  Future<RestaurantListResponseModel> fetchCovidList() {
    return _provider.fetchCovidList();
  }
}

class NetworkError extends Error {}
