part of 'post_review_cubit.dart';

@freezed
class PostReviewState with _$PostReviewState {
  const factory PostReviewState.loading() = _Loading;
  const factory PostReviewState.success(PostReviewResponse data) = _Success;
  const factory PostReviewState.failure(String message) = _Failure;
}
