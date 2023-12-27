import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_details_model.dart';
import 'package:restaurant_app/features/restaurant/models/restaurant_model.dart';
import 'package:restaurant_app/features/restaurant/presentation/bloc/restaurant_bloc.dart';
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
  List<RestaurantModel> articles = [];

  final RestaurantBloc _restaurantBloc = RestaurantBloc();

  @override
  void initState() {
    super.initState();

    _restaurantBloc.add(GetRestaurantList());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => _restaurantBloc,
      child: BlocListener<RestaurantBloc, RestaurantState>(
        listener: (BuildContext context, RestaurantState state) {
          print('state $state');
          if (state is RestaurantError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        child: BlocBuilder<RestaurantBloc, RestaurantState>(
          builder: (context, state) {
            if (state is RestaurantLoaded) {
              return PageWidget(articles: state.restaurantListResponseModel.restaurants ?? []);
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}

class PageWidget extends StatelessWidget {
  const PageWidget({
    super.key,
    required this.articles,
  });

  final List<RestaurantDetailsModel> articles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingAppWithBar,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: TSizes.sm),

              Text(TTextStrings.mainTitle, style: Theme.of(context).textTheme.headlineMedium),
              Text(TTextStrings.mainSubtitle, style: Theme.of(context).textTheme.bodyMedium),

              const SizedBox(height: TSizes.spaceBtwSection),

              // -- List
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                itemBuilder: (BuildContext context, int index) {
                  return RestaurantWidget(restaurant: articles[index]);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: TSizes.spaceBtwItem);
                },
                itemCount: articles.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
