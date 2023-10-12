import 'package:flutter/material.dart';
import 'package:apple_store/application/domain/entity/shop_item.dart';

class ShopItemDetailScreenModel extends ChangeNotifier {
  final ShopItemConfiguration _configuration;
  ShopItemConfiguration get configuration => _configuration;

  ShopItemDetailScreenModel(
    this._configuration,
  );
}
