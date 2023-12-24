import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/constants/sizes.dart';
import 'package:restaurant_app/utils/styles/spacing_style.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final list = ArticleRepository().getRestaurants();

    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('database'),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: TSizes.spaceBtwItem),
                itemCount: entries.length,
              ),
              const Text('database'),
            ],
          ),
        ),
      ),
    );
  }
}
