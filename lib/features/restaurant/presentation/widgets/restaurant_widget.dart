import 'package:flutter/material.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_response.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';

class RestaurantWidget extends StatelessWidget {
  const RestaurantWidget({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  final RestaurantResponse restaurant;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // -- Image
        SizedBox(
          width: TSizes.imageThumbSize * 1.5,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
            child: Image.network(
              'https://restaurant-api.dicoding.dev/images/small/${restaurant.pictureId}',
              height: TSizes.imageThumbSize,
              fit: BoxFit.cover,
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
              Text(
                restaurant.name,
                style: Theme.of(context).textTheme.bodyLarge,
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
