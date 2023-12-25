import 'package:flutter/material.dart';
import 'package:restaurant_app/features/article/models/menu_model.dart';
import 'package:restaurant_app/features/article/models/restaurant_model.dart';
import 'package:restaurant_app/features/article/presentation/pages/article_details_page.dart';
import 'package:restaurant_app/utils/constants/paths.dart';
import 'package:restaurant_app/features/article/presentation/pages/articles_page.dart';
import 'package:restaurant_app/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant App',

      // -- Theme
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,

      // -- Routes
      initialRoute: TPaths.articles,
      routes: {
        TPaths.articles: (context) => const ArticlesPage(),
        TPaths.articleDetails: (context) => ArticleDetails(restaurant: ModalRoute.of(context)!.settings.arguments as RestaurantModel),
      },
    );
  }
}
