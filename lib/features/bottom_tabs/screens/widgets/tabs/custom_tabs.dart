import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../../../route/app_router.gr.dart';

class CustomTabs {
  static List<PageRouteInfo<dynamic>> routes = [
    const ExploreTab(),
    const FavoriteTab(),
    const FriendsTab()
  ];

  static List<BottomNavigationBarItem> items = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.explore),
      label: "Utforska",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: "Favoriter",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.people),
      label: "Vänner",
    ),
  ];

// //screens for each tab
//   static const _selectedTab = [
//     ExploreScreen(),
//     FavoritesScreen(),
//   ];

// //builds right tab
//   static Widget tabBuilder(BuildContext context, int selectedTab) {
//     return CupertinoTabView(builder: (BuildContext context) {
//       return CupertinoPageScaffold(
//         child: _selectedTab[selectedTab],
//       );
//     });
//   }
}
