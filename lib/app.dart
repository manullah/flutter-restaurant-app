import 'package:flutter/material.dart';
import 'package:restaurant_app/utils/constants/paths.dart';
import 'package:restaurant_app/features/article/presentation/pages/articles_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Restaurant App',

      // -- Routes
      initialRoute: TPaths.articlesPath,
      routes: {
        TPaths.articlesPath: (context) => const ArticlesPage(),
      },
    );
  }
}
