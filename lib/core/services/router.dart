import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdd_edu_app/core/common/views/page_under_construction.dart';
import 'package:tdd_edu_app/views/presentation/on_boarding_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OnBoardingScreen.routeName:
      return _pageBuilder((_) => const OnBoardingScreen(), settings: settings);
    default:
      return _pageBuilder((_) =>
      const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
  Widget Function(BuildContext) page, {
  required RouteSettings settings,
}) {
  return PageRouteBuilder(
      transitionsBuilder: (_, animation, __, child) => FadeTransition(
            opacity: animation,
            child: child,
          ),
      settings: settings,
      pageBuilder: (context, _, __) => page(context),);
}
