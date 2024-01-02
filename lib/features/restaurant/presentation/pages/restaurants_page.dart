import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/features/restaurant/cubit/search_restaurants/search_restaurants_cubit.dart';
import 'package:restaurant_app/features/restaurant/data/restaurant_api_service.dart';
import 'package:restaurant_app/features/restaurant/presentation/pages/restaurant_details_page.dart';
import 'package:restaurant_app/features/restaurant/presentation/widgets/restaurant_widget.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';
import 'package:restaurant_app/utils/constants/text_strings.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class RestaurantsPage extends StatefulWidget {
  const RestaurantsPage({super.key});

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SearchRestaurantsCubit>(create: (_) => SearchRestaurantsCubit(RestaurantApiService())..fetchRestaurant('')),
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
                    const SizedBox(height: TSizes.sm),
                    Text(TTextStrings.mainTitle, style: Theme.of(context).textTheme.headlineMedium),
                    Text(TTextStrings.mainSubtitle, style: Theme.of(context).textTheme.bodyMedium),
                    const SizedBox(height: TSizes.spaceBtwSection),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Search'),
                      onChanged: (value) {
                        if (_debounce?.isActive ?? false) _debounce?.cancel();
                        _debounce = Timer(const Duration(milliseconds: 500), () {
                          context.read<SearchRestaurantsCubit>().fetchRestaurant(value);
                        });
                      },
                    ),
                    const SizedBox(height: TSizes.spaceBtwSection),
                    BlocBuilder<SearchRestaurantsCubit, SearchRestaurantsState>(
                      builder: (_, state) {
                        return state.when(
                          loading: () => const Text('Loading...'),
                          failure: (message) => Text(message),
                          success: (data) {
                            if (data.founded == 0) {
                              return const Text('Data not found.');
                            }

                            return ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              padding: const EdgeInsets.all(0),
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => RestaurantDetailsPage(id: data.restaurants![index].id)),
                                  ),
                                  child: RestaurantWidget(restaurant: data.restaurants![index]),
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(height: TSizes.spaceBtwItem);
                              },
                              itemCount: data.founded,
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
