import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_app/features/review/data/review_api_service.dart';
import 'package:restaurant_app/features/review/models/post_review_response.dart';

part 'post_review_state.dart';
part 'post_review_cubit.freezed.dart';

class PostReviewCubit extends Cubit<PostReviewState> {
  PostReviewCubit(this.apiService) : super(const _Loading());
  final ReviewApiService apiService;

  Future<void> postReview(String id, String name, String review) async {
    final data = await apiService.postReview(id, name, review);

    if (data.error) {
      emit(_Failure(data.message));
    } else {
      emit(_Success(data));
    }
  }
}
