// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i8;
import 'package:flutter/material.dart' as _i7;

import '../features/explore/detail/screens/explore_detail_screen.dart' as _i4;
import '../features/explore/index/screens/explore_screen.dart' as _i3;
import '../features/favorites/screens/favorites_screen.dart' as _i5;
import '../features/home/screens/home_screen.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    MVPHomeRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.MVPHomeScreen(),
      );
    },
    ExploreTab.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterScreen(),
      );
    },
    FavoriteTab.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterScreen(),
      );
    },
    MVPExploreRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MVPExploreScreen(),
      );
    },
    MVPExploreDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MVPExploreDetailRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.MVPExploreDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    MVPFavoritesRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.MVPFavoritesScreen(),
      );
    },
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(
          MVPHomeRoute.name,
          path: '/',
          children: [
            _i6.RouteConfig(
              '#redirect',
              path: '',
              parent: MVPHomeRoute.name,
              redirectTo: 'exploreTab',
              fullMatch: true,
            ),
            _i6.RouteConfig(
              ExploreTab.name,
              path: 'exploreTab',
              parent: MVPHomeRoute.name,
              children: [
                _i6.RouteConfig(
                  MVPExploreRoute.name,
                  path: '',
                  parent: ExploreTab.name,
                ),
                _i6.RouteConfig(
                  MVPExploreDetailRoute.name,
                  path: 'detail',
                  parent: ExploreTab.name,
                ),
              ],
            ),
            _i6.RouteConfig(
              FavoriteTab.name,
              path: 'favoriteTab',
              parent: MVPHomeRoute.name,
              children: [
                _i6.RouteConfig(
                  MVPFavoritesRoute.name,
                  path: '',
                  parent: FavoriteTab.name,
                ),
                _i6.RouteConfig(
                  MVPExploreDetailRoute.name,
                  path: 'detail',
                  parent: FavoriteTab.name,
                ),
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.MVPHomeScreen]
class MVPHomeRoute extends _i6.PageRouteInfo<void> {
  const MVPHomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MVPHomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'MVPHomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterScreen]
class ExploreTab extends _i6.PageRouteInfo<void> {
  const ExploreTab({List<_i6.PageRouteInfo>? children})
      : super(
          ExploreTab.name,
          path: 'exploreTab',
          initialChildren: children,
        );

  static const String name = 'ExploreTab';
}

/// generated route for
/// [_i2.EmptyRouterScreen]
class FavoriteTab extends _i6.PageRouteInfo<void> {
  const FavoriteTab({List<_i6.PageRouteInfo>? children})
      : super(
          FavoriteTab.name,
          path: 'favoriteTab',
          initialChildren: children,
        );

  static const String name = 'FavoriteTab';
}

/// generated route for
/// [_i3.MVPExploreScreen]
class MVPExploreRoute extends _i6.PageRouteInfo<void> {
  const MVPExploreRoute()
      : super(
          MVPExploreRoute.name,
          path: '',
        );

  static const String name = 'MVPExploreRoute';
}

/// generated route for
/// [_i4.MVPExploreDetailScreen]
class MVPExploreDetailRoute
    extends _i6.PageRouteInfo<MVPExploreDetailRouteArgs> {
  MVPExploreDetailRoute({
    _i8.Key? key,
    required String id,
  }) : super(
          MVPExploreDetailRoute.name,
          path: 'detail',
          args: MVPExploreDetailRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'MVPExploreDetailRoute';
}

class MVPExploreDetailRouteArgs {
  const MVPExploreDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i8.Key? key;

  final String id;

  @override
  String toString() {
    return 'MVPExploreDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.MVPFavoritesScreen]
class MVPFavoritesRoute extends _i6.PageRouteInfo<void> {
  const MVPFavoritesRoute()
      : super(
          MVPFavoritesRoute.name,
          path: '',
        );

  static const String name = 'MVPFavoritesRoute';
}
