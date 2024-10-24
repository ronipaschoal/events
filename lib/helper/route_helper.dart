import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

sealed class RouteHelper {
  static CustomTransitionPage transitionPage(Widget page) {
    return CustomTransitionPage(
      child: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }
}
