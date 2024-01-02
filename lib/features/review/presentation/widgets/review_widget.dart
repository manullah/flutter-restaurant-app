import 'package:flutter/material.dart';
import 'package:restaurant_app/features/review/models/customer_review_response.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.customerReview,
  });

  final CustomerReviewResponse customerReview;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: TColors.darkerGrey,
        ),
        borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
      ),
      padding: const EdgeInsets.symmetric(vertical: TSizes.sm, horizontal: TSizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            customerReview.name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          Text(
            customerReview.date,
            style: Theme.of(context).textTheme.labelSmall,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: TSizes.xs),
          Text(customerReview.review),
        ],
      ),
    );
  }
}
