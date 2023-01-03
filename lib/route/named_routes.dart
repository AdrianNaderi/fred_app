class NamedRoutes {
//TABS
  static const toTabs = "tabs";

//EXPLORE-------------------------
  static const toExplore = "explore";
  static const toExploreDetail = "details";

//FAVORITES
  static const toFavorites = "favorites";

//----------------------------------------------------------------------------

  // /// The route configuration.
  // static GoRouter router = GoRouter(
  //   routes: <RouteBase>[
  //     GoRoute(
  //       name: toExplore,
  //       path: toExplore,
  //       builder: (BuildContext context, GoRouterState state) {
  //         return const MVPTabsScreen();
  //       },
  //       routes: <RouteBase>[
  //         GoRoute(
  //           name: toExploreDetail,
  //           path: toExploreDetail,
  //           builder: (BuildContext context, GoRouterState state) {
  //             return const MVPExploreDetailScreen();
  //           },
  //         ),
  //       ],
  //     ),
  //   ],
  // );
}


//Custom page transitions
   // pageBuilder: (context, state) {
            //   return CustomTransitionPage(
            //     key: state.pageKey,
            //     child: const MVPExploreDetailScreen(),
            //     transitionsBuilder:
            //         (context, animation, secondaryAnimation, child) {
            //       // Change the opacity of the screen using a Curve based on the the animation's
            //       // value
            //       return FadeTransition(
            //         opacity: CurveTween(curve: Curves.easeInOutCirc)
            //             .animate(animation),
            //         child: child,
            //       );
            //     },
            //   );
            // },