import 'package:dio/dio.dart';
import 'package:restaurant_app/features/restaurant/data/models/restaurant_list_response_model.dart';

class RestaurantApiProvider {
  final Dio _dio = Dio();
  final String _url = 'https://restaurant-api.dicoding.dev';

  Future<RestaurantListResponseModel> fetchCovidList() async {
    try {
      Response response = await _dio.get('$_url/list');

      // return RestaurantListResponseModel.empty();
      return RestaurantListResponseModel.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");

      return RestaurantListResponseModel.withError("Data not found / Connection issue");
    }
  }
}
