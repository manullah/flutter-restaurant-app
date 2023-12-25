import 'package:flutter/material.dart';
import 'package:restaurant_app/core/models/name_model.dart';
import 'package:restaurant_app/features/article/models/menu_model.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';

class MenuWidget extends StatelessWidget {
  final NameModel menu;
  final MenuType type;

  const MenuWidget({
    required this.menu,
    required this.type,
    Key? key,
  }) : super(key: key);

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
          Icon(type == MenuType.food ? Icons.food_bank : Icons.local_drink, size: TSizes.iconMd),
          const SizedBox(width: TSizes.sm),
          Text(menu.name),
        ],
      ),
    );
  }
}
