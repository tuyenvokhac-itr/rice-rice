import 'package:flutter/material.dart';
import 'package:rice_rice/core/navigation/app_routes.dart';
import 'package:rice_rice/presentation/pages/splash/splash_page.dart';

class AppNavigation {
  static final navigatorKey = GlobalKey<NavigatorState>();

  static String? getCurrentRouteName() {
    String? currentRouteName;
    navigatorKey.currentState?.popUntil((route) {
      currentRouteName = route.settings.name;
      // return true so popUntil do nothing
      return true;
    });
    return currentRouteName;
  }

  static Route<dynamic> getRoutes(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
            builder: (_) => const SplashPage(), settings: routeSettings);

      default:
        return MaterialPageRoute(
            builder: (_) => const SplashPage(), settings: routeSettings);
    }
  }

  static Future<T?> routeTo<T extends Object?>(
      BuildContext context, String name,
      {Object? args}) {
    return Navigator.of(context).pushNamed(name, arguments: args);
  }

  static Future<T?> replace<T extends Object?>(
      BuildContext context, String name,
      {Object? args}) {
    return Navigator.of(context).pushReplacementNamed(name, arguments: args);
  }

  /*
  * Use for normal case, back to previous screen
  */
  static Future<bool> back<T extends Object>(BuildContext context,
      [T? result]) {
    return Navigator.of(context).maybePop(result);
  }

  /*
  * pop will ignore the "WillPopScope" widget and force to go back to previous page
  * Using for a dialog sets "willPopScope = false"
  */
  static void pop<T extends Object>(BuildContext context, [T? result]) {
    Navigator.of(context).pop(result);
  }

  static void popUntil<T extends Object>(BuildContext context, String name,
      [T? result]) {
    Navigator.of(context).popUntil(ModalRoute.withName(name));
  }

  static void popUntilRoot<T extends Object>(BuildContext context,
      [T? result]) {
    Navigator.of(context).popUntil((route) => route.isFirst);
  }

  static void popDialog<T extends Object>(BuildContext context, [T? result]) {
    Navigator.of(context, rootNavigator: true).pop(result);
  }
}
