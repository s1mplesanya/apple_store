import 'package:apple_store/application/domain/entity/shop_item.dart';
import 'package:apple_store/application/ui/screens/main_screen/main_screen_model.dart';
import 'package:apple_store/application/ui/screens/main_screen/main_screen_widget.dart';
import 'package:apple_store/application/ui/screens/shop_item_detail_screen/shop_item_detail_screen_model.dart';
import 'package:apple_store/application/ui/screens/shop_item_detail_screen/shop_item_detail_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ScreenFactory {
  Widget makeMainScreen() {
    return ChangeNotifierProvider(
      create: (_) => MainScreenModel(),
      child: const MainScreenWidget(),
    );
  }

  Widget makeDetailShopItemScreen(ShopItemConfiguration configuration) {
    return ChangeNotifierProvider(
      create: (_) => ShopItemDetailScreenModel(configuration),
      child: const ShopItemDetailScreenWidget(),
    );
  }
}
