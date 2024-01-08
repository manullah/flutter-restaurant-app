import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/core/hive_box.dart';
import 'package:restaurant_app/core/widgets/loading_widget.dart';
import 'package:restaurant_app/features/restaurant/cubit/get_restaurant/get_restaurant_cubit.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_service.dart';
import 'package:restaurant_app/features/restaurant/presentation/widgets/menu_widget.dart';
import 'package:restaurant_app/features/review/presentation/pages/add_review_page.dart';
import 'package:restaurant_app/features/review/presentation/widgets/review_widget.dart';
import 'package:restaurant_app/utils/constants/colors.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';
import 'package:restaurant_app/utils/constants/text_strings.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class RestaurantDetailsPage extends StatelessWidget {
  const RestaurantDetailsPage({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetRestaurantCubit(RestaurantApiService())..fetchRestaurant(id),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Details'),
        ),
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: TSpacingStyle.paddingApp,
              child: BlocBuilder<GetRestaurantCubit, GetRestaurantState>(
                builder: (context, state) {
                  return state.when(
                    loading: () => const LoadingWidget(),
                    failure: (message) => Text(message),
                    success: (data) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // -- Image
                          Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                height: 250,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
                                  child: Image.network(
                                    'https://restaurant-api.dicoding.dev/images/large/${data.restaurant!.pictureId}',
                                    height: TSizes.imageThumbSize,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              StatefulBuilder(
                                builder: (context, setState) {
                                  return Positioned(
                                    right: TSizes.sm,
                                    bottom: TSizes.sm,
                                    child: ClipOval(
                                      child: Material(
                                        color: TColors.white,
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (MainBoxMixin.isMyFavorite(id)) {
                                                MainBoxMixin.removeFavorite(id);
                                              } else {
                                                MainBoxMixin.addFavorite(id);
                                              }
                                            });

                                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                              duration: Duration(seconds: 1),
                                              content: Text(TTextStrings.successfullyFavored),
                                            ));
                                          },
                                          child: SizedBox(
                                            width: TSizes.xl * 1.5,
                                            height: TSizes.xl * 1.5,
                                            child: Icon(
                                              Icons.favorite,
                                              color: MainBoxMixin.isMyFavorite(id) ? Colors.red : Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),

                          const SizedBox(height: TSizes.spaceBtwItem),

                          // -- Title
                          Text(data.restaurant!.name, style: Theme.of(context).textTheme.headlineMedium),

                          const SizedBox(height: TSizes.xs),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // -- Place
                              Row(
                                children: [
                                  const Icon(Icons.place, size: TSizes.iconSm, color: TColors.darkGrey),
                                  const SizedBox(width: TSizes.xs),
                                  Text(data.restaurant!.city, style: Theme.of(context).textTheme.bodySmall),
                                ],
                              ),
                              // -- Rating
                              Row(
                                children: [
                                  Text('${data.restaurant!.rating}', style: Theme.of(context).textTheme.bodySmall),
                                  const SizedBox(width: TSizes.xs),
                                  const Icon(Icons.star, size: TSizes.iconSm, color: Colors.orange),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: TSizes.spaceBtwItem),

                          // -- Description
                          Text(TTextStrings.detailsDescription, style: Theme.of(context).textTheme.bodySmall),
                          const SizedBox(height: TSizes.xs),
                          Text(data.restaurant!.description, style: Theme.of(context).textTheme.bodyMedium),

                          const SizedBox(height: TSizes.spaceBtwSection),

                          // -- ``Food Menu
                          Text(TTextStrings.detailsFoodMenu, style: Theme.of(context).textTheme.bodySmall),
                          ListView.separated(
                            padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return MenuWidget(
                                menu: data.restaurant!.menus!.foods[index],
                                type: MenuType.foods,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: TSizes.sm);
                            },
                            itemCount: data.restaurant!.menus!.foods.length,
                          ),

                          const SizedBox(height: TSizes.spaceBtwSection),

                          // -- Drinks Menu
                          Text(TTextStrings.detailsDrinkMenu, style: Theme.of(context).textTheme.bodySmall),
                          ListView.separated(
                            padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return MenuWidget(
                                menu: data.restaurant!.menus!.drinks[index],
                                type: MenuType.drinks,
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: TSizes.sm);
                            },
                            itemCount: data.restaurant!.menus!.drinks.length,
                          ),

                          const SizedBox(height: TSizes.spaceBtwSection),

                          // -- Customer Review
                          Text('Review', style: Theme.of(context).textTheme.bodySmall),
                          ListView.separated(
                            padding: const EdgeInsets.symmetric(vertical: TSizes.sm),
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              final customerReview = data.restaurant?.customerReviews?[index];
                              return ReviewWidget(customerReview: customerReview!);
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(height: TSizes.sm);
                            },
                            itemCount: data.restaurant!.customerReviews!.length,
                          ),

                          const SizedBox(height: TSizes.sm),

                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () async {
                                await Navigator.push(context, MaterialPageRoute(builder: (context) => AddReviewPage(id: id)));
                                if (context.mounted) context.read<GetRestaurantCubit>().fetchRestaurant(id);
                              },
                              child: const Text('Add Review'),
                            ),
                          ),

                          const SizedBox(height: TSizes.spaceBtwSection),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
