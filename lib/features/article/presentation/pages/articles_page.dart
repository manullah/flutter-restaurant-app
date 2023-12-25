import 'package:flutter/material.dart';
import 'package:restaurant_app/features/article/models/restaurant_model.dart';
import 'package:restaurant_app/features/article/presentation/widgets/restaurant_widget.dart';
import 'package:restaurant_app/features/article/repositories/article_repository.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';
import 'package:restaurant_app/utils/constants/text_strings.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class ArticlesPage extends StatefulWidget {
  const ArticlesPage({super.key});

  @override
  State<ArticlesPage> createState() => _ArticlesPageState();
}

class _ArticlesPageState extends State<ArticlesPage> {
  List<RestaurantModel> articles = [];

  void getRestaurants() async {
    final restaurants = await ArticleRepository().getRestaurants();

    setState(() {
      articles = restaurants;
    });
  }

  @override
  void initState() {
    super.initState();

    getRestaurants();
  }

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
