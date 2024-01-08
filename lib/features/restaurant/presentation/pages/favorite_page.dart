import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/core/hive_box.dart';
import 'package:restaurant_app/core/widgets/loading_widget.dart';
import 'package:restaurant_app/features/restaurant/cubit/get_restaurants/get_restaurants_cubit.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_service.dart';
import 'package:restaurant_app/features/restaurant/presentation/pages/restaurant_details_page.dart';
import 'package:restaurant_app/features/restaurant/presentation/widgets/restaurant_widget.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetRestaurantsCubit>(create: (_) => GetRestaurantsCubit(RestaurantApiService())..fetchRestaurants()),
      ],
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            bottom: false,
            child: SingleChildScrollView(
              child: Padding(
                padding: TSpacingStyle.paddingApp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BlocBuilder<GetRestaurantsCubit, GetRestaurantsState>(
                      builder: (_, state) {
                        return state.when(
                          loading: () => const LoadingWidget(),
                          failure: (message) => Text(message),
                          success: (data) {
                            final list = data.restaurants.where((element) => MainBoxMixin.getFavorites().contains(element.id)).toList();

                            if (list.isEmpty) {
                              return const Text('Favorite not found.');
                            }

                            return ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () async {
                                    await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => RestaurantDetailsPage(
                                          id: list[index].id,
                                        ),
                                      ),
                                    );

                                    if (context.mounted) context.read<GetRestaurantsCubit>().reFetchRestaurants();
                                  },
                                  child: RestaurantWidget(restaurant: list[index]),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(height: TSizes.spaceBtwItem);
                              },
                              itemCount: list.length,
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
