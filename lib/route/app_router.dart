import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:fred_app/features/explore/detail/screens/explore_detail_screen.dart';
import 'package:fred_app/features/favorites/screens/favorites_screen.dart';

import '../features/explore/index/screens/explore_screen.dart';
import '../features/home/screens/home_screen.dart';

@CupertinoAutoRouter(
  replaceInRouteName: "Screen,Route",
  routes: <AutoRoute>[
    AutoRoute(page: MVPHomeScreen, path: "/", children: [
      //explore
      AutoRoute(
        page: EmptyRouterScreen,
        name: "ExploreTab",
        path: "exploreTab",
        initial: true,
        children: [
          //routing of tabs need to be in the same hierarcy
          AutoRoute(page: MVPExploreScreen, path: ""),
          AutoRoute(page: MVPExploreDetailScreen, path: "detail"),
        ],
      ),

      //favorite
      AutoRoute(
          page: EmptyRouterScreen,
          name: "FavoriteTab",
          path: "favoriteTab",
          children: [
            AutoRoute(page: MVPFavoritesScreen, path: ""),
            AutoRoute(page: MVPExploreDetailScreen, path: "detail"),
          ]),
    ]
        // initial: true,
        ),
    // AutoRoute(
    //   name: "ExploreRouter",
    //   path: "explore",
    //   page: MVPExploreScreen,
    // ),
    // AutoRoute(
    //   name: "ExploreDetail",
    //   path: "explore/detail",
    //   page: MVPExploreDetailScreen,
    // ),
    // AutoRoute(
    //   name: "FavoriteRouter",
    //   path: "favorite",
    //   page: MVPFavoritesScreen,
    // ),
  ],
)
class $AppRouter {}
