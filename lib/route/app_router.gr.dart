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
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:auto_route/empty_router_widgets.dart' as _i2;
import 'package:flutter/cupertino.dart' as _i9;
import 'package:flutter/material.dart' as _i8;

import '../features/explore/detail/screens/explore_detail_screen.dart' as _i4;
import '../features/explore/index/screens/explore_screen.dart' as _i3;
import '../features/favorites/screens/favorites_screen.dart' as _i5;
import '../features/friends/index/screens/friends_screen.dart' as _i6;
import '../features/home/screens/home_screen.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomeScreen(),
      );
    },
    ExploreTab.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterScreen(),
      );
    },
    FavoriteTab.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterScreen(),
      );
    },
    FriendsTab.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i2.EmptyRouterScreen(),
      );
    },
    ExploreRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i3.ExploreScreen(),
      );
    },
    ExploreDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ExploreDetailRouteArgs>();
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: _i4.ExploreDetailScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    FavoritesRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FavoritesScreen(),
      );
    },
    FriendsRoute.name: (routeData) {
      return _i7.CupertinoPageX<dynamic>(
        routeData: routeData,
        child: const _i6.FriendsScreen(),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          HomeRoute.name,
          path: '/',
          children: [
            _i7.RouteConfig(
              '#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'exploreTab',
              fullMatch: true,
            ),
            _i7.RouteConfig(
              ExploreTab.name,
              path: 'exploreTab',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(
                  ExploreRoute.name,
                  path: '',
                  parent: ExploreTab.name,
                ),
                _i7.RouteConfig(
                  ExploreDetailRoute.name,
                  path: 'detail',
                  parent: ExploreTab.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              FavoriteTab.name,
              path: 'favoriteTab',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(
                  FavoritesRoute.name,
                  path: '',
                  parent: FavoriteTab.name,
                ),
                _i7.RouteConfig(
                  ExploreDetailRoute.name,
                  path: 'detail',
                  parent: FavoriteTab.name,
                ),
              ],
            ),
            _i7.RouteConfig(
              FriendsTab.name,
              path: 'friendstab',
              parent: HomeRoute.name,
              children: [
                _i7.RouteConfig(
                  FriendsRoute.name,
                  path: '',
                  parent: FriendsTab.name,
                )
              ],
            ),
          ],
        )
      ];
}

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i7.PageRouteInfo<void> {
  const HomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.EmptyRouterScreen]
class ExploreTab extends _i7.PageRouteInfo<void> {
  const ExploreTab({List<_i7.PageRouteInfo>? children})
      : super(
          ExploreTab.name,
          path: 'exploreTab',
          initialChildren: children,
        );

  static const String name = 'ExploreTab';
}

/// generated route for
/// [_i2.EmptyRouterScreen]
class FavoriteTab extends _i7.PageRouteInfo<void> {
  const FavoriteTab({List<_i7.PageRouteInfo>? children})
      : super(
          FavoriteTab.name,
          path: 'favoriteTab',
          initialChildren: children,
        );

  static const String name = 'FavoriteTab';
}

/// generated route for
/// [_i2.EmptyRouterScreen]
class FriendsTab extends _i7.PageRouteInfo<void> {
  const FriendsTab({List<_i7.PageRouteInfo>? children})
      : super(
          FriendsTab.name,
          path: 'friendstab',
          initialChildren: children,
        );

  static const String name = 'FriendsTab';
}

/// generated route for
/// [_i3.ExploreScreen]
class ExploreRoute extends _i7.PageRouteInfo<void> {
  const ExploreRoute()
      : super(
          ExploreRoute.name,
          path: '',
        );

  static const String name = 'ExploreRoute';
}

/// generated route for
/// [_i4.ExploreDetailScreen]
class ExploreDetailRoute extends _i7.PageRouteInfo<ExploreDetailRouteArgs> {
  ExploreDetailRoute({
    _i9.Key? key,
    required String id,
  }) : super(
          ExploreDetailRoute.name,
          path: 'detail',
          args: ExploreDetailRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'ExploreDetailRoute';
}

class ExploreDetailRouteArgs {
  const ExploreDetailRouteArgs({
    this.key,
    required this.id,
  });

  final _i9.Key? key;

  final String id;

  @override
  String toString() {
    return 'ExploreDetailRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i5.FavoritesScreen]
class FavoritesRoute extends _i7.PageRouteInfo<void> {
  const FavoritesRoute()
      : super(
          FavoritesRoute.name,
          path: '',
        );

  static const String name = 'FavoritesRoute';
}

/// generated route for
/// [_i6.FriendsScreen]
class FriendsRoute extends _i7.PageRouteInfo<void> {
  const FriendsRoute()
      : super(
          FriendsRoute.name,
          path: '',
        );

  static const String name = 'FriendsRoute';
}
