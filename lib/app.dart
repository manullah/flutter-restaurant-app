import 'package:flutter/material.dart';
import 'package:restaurant_app/features/home/presentation/pages/home_page.dart';
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

      home: const HomePage(),
    );
  }
}
