import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:fred_app/features/explore/detail/screens/explore_detail_screen.dart';
import 'package:fred_app/features/favorites/screens/favorites_screen.dart';
import 'package:fred_app/features/friends/index/screens/friends_screen.dart';

import '../features/explore/index/screens/explore_screen.dart';
import '../features/home/screens/home_screen.dart';

@CupertinoAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: <AutoRoute>[
    CupertinoRoute(page: HomeScreen, path: "/", children: [
      //explore
      CupertinoRoute(
        page: EmptyRouterScreen,
        name: "ExploreTab",
        path: "exploreTab",
        initial: true,
        children: [
          //routing of tabs need to be in the same hierarcy
          CupertinoRoute(page: ExploreScreen, path: ""),
          CupertinoRoute(page: ExploreDetailScreen, path: "detail"),
        ],
      ),

      //favorite
      CupertinoRoute(
        page: EmptyRouterScreen,
        name: "FavoriteTab",
        path: "favoriteTab",
        children: [
          CupertinoRoute(page: FavoritesScreen, path: ""),
          CupertinoRoute(page: ExploreDetailScreen, path: "detail"),
        ],
      ),

      //friends
      CupertinoRoute(
        page: EmptyRouterScreen,
        name: "FriendsTab",
        path: "friendstab",
        children: [
          CupertinoRoute(page: FriendsScreen, path: ""),
        ],
      )
    ]),
  ],
)
class $AppRouter {}
