import 'package:flutter/material.dart';
import 'package:restaurant_app/features/article/models/restaurant_model.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/constants/paths.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';

class RestaurantWidget extends StatelessWidget {
  final RestaurantModel restaurant;

  const RestaurantWidget({
    required this.restaurant,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void redirectDetails() {
      Navigator.pushNamed(context, TPaths.articleDetails, arguments: restaurant);
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -- Image
        GestureDetector(
          onTap: redirectDetails,
          child: SizedBox(
            width: TSizes.imageThumbSize * 1.5,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
              child: Image.network(
                restaurant.pictureId,
                height: TSizes.imageThumbSize,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.xs, horizontal: TSizes.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // -- Title
              GestureDetector(
                onTap: redirectDetails,
                child: Text(
                  restaurant.name,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),

              const SizedBox(height: TSizes.xs),

              // -- Place
              Row(
                children: [
                  const Icon(Icons.place, size: TSizes.iconSm, color: TColors.darkGrey),
                  const SizedBox(width: TSizes.xs),
                  Text(restaurant.city, style: Theme.of(context).textTheme.bodySmall),
                ],
              ),

              const SizedBox(height: TSizes.xs),

              // -- Rating
              Row(
                children: [
                  const Icon(Icons.star, size: TSizes.iconSm, color: TColors.darkGrey),
                  const SizedBox(width: TSizes.xs),
                  Text('${restaurant.rating}', style: Theme.of(context).textTheme.bodySmall),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
