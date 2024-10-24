import 'dart:async';

import 'package:events/pages/home/home_route.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

sealed class Routes {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static const String home = '/';

  static final List<RouteBase> _routes = [
    HomeRoute.route(_rootNavigatorKey),
  ];

  static final config = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: home,
    routes: _routes,
    redirect: _redirectPolicy,
    observers: [],
  );

  static FutureOr<String?> _redirectPolicy(
    BuildContext context,
    GoRouterState state,
  ) async {
    if (state.uri.path.startsWith('/')) {
      return '/home';
    }
    return null;
  }

  static void pop<T extends Object?>([T? result]) {
    config.pop<T>(result);
  }

  static void popToRoot<T extends Object?>([T? result]) {
    while (config.canPop()) {
      config.pop(result);
    }
  }

  static void popAndPush(String route) {
    if (config.canPop()) {
      config.pop();
    }
    config.push(route);
  }

  static void go(String route, {Object? extra}) {
    config.go(route, extra: extra);
  }

  static Future<T?> push<T extends Object?>(String route, {Object? extra}) {
    return config.push<T>(route, extra: extra);
  }
}
