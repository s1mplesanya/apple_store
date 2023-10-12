import 'package:apple_store/application/domain/entity/shop_item.dart';
import 'package:apple_store/application/domain/screen_factory/screen_factory.dart';
import 'package:flutter/material.dart';

abstract class MainNavigationScreens {
  static const mainScreen = '/main';
  static const shopItemDetailView = '/main/detailItem';
}

class MainNavigation {
  static final _screenFactory = ScreenFactory();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationScreens.mainScreen: (_) => _screenFactory.makeMainScreen(),
  };

  Route<Object>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigationScreens.shopItemDetailView:
        final arguments = settings.arguments as ShopItemConfiguration;
        return MaterialPageRoute(
          builder: (_) => _screenFactory.makeDetailShopItemScreen(
            arguments,
          ),
        );
      default:
        const widget = Text('Nagivation error!');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }
}
