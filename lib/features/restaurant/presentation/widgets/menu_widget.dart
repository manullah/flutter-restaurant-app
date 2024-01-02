import 'package:flutter/material.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_response.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';

enum MenuType { foods, drinks }

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    super.key,
    required this.menu,
    required this.type,
  });

  final CategoryResponse menu;
  final MenuType type;

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
      child: Row(
        children: [
          Icon(type == MenuType.foods ? Icons.food_bank : Icons.local_drink, size: TSizes.iconMd),
          const SizedBox(width: TSizes.sm),
          Text(menu.name),
        ],
      ),
    );
  }
}
