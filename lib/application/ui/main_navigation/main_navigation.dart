import 'package:apple_store/application/domain/screen_factory/screen_factory.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationScreens {
  static const mainScreen = '/main';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationScreens.mainScreen: (_) => _screenFactory.makeMainScreen(),
  };

  Route<Object>? onGenerateRoute(RouteSettings settings) {
    return null;
  }
}
