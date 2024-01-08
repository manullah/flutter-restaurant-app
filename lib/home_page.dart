import 'package:flutter/material.dart';
import 'package:restaurant_app/features/restaurant/presentation/pages/favorite_page.dart';
import 'package:restaurant_app/features/restaurant/presentation/pages/restaurants_page.dart';
import 'package:restaurant_app/utils/constants/text_strings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: TTextStrings.home),
          NavigationDestination(icon: Icon(Icons.favorite), label: TTextStrings.myFavorites),
        ],
      ),

      // -- Layouts
      body: [
        const RestaurantsPage(),
        const FavoritePage(),
      ][currentPageIndex],
    );
  }
}
