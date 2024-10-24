import 'package:events/helper/route_helper.dart';
import 'package:events/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

sealed class HomeRoute {
  static const path = '/home';
  static GoRoute route([GlobalKey<NavigatorState>? parentNavigatorKey]) {
    return GoRoute(
      parentNavigatorKey: parentNavigatorKey,
      path: path,
      pageBuilder: (context, state) {
        return RouteHelper.transitionPage(
          const HomePage(),
        );
      },
    );
  }
}
