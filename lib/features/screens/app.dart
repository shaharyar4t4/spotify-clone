import 'package:flutter/material.dart';
import 'package:spotify/core/app_color/color.dart';
import 'package:spotify/features/screens/home.dart';
import 'package:spotify/features/screens/search.dart';
import 'package:spotify/features/screens/your_liberay.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final Tab = [Home(), Search(), YourLiberay()];
  int currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,

      //body --> show the current tab page
      body: Tab[currentTabIndex],
      // Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTabIndex,
        onTap: (currentIndex) {
          print("Current page index <--- $currentIndex");
          currentTabIndex = currentIndex;
        },
        selectedItemColor: navigation_selected_item,
        unselectedItemColor: navigation_unselected_item,
        backgroundColor: navigation_bar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Your Library",
          ),
        ],
      ),
    );
  }
}
