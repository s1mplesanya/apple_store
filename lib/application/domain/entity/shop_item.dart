import 'dart:ui';

import 'package:apple_store/application/ui/screens/main_screen/main_screen_model.dart';

class ShopItemConfiguration {
  final String title;
  final String year;
  final Map<Color, String> colors;
  final List<String> imagesUrls;
  final List<String> availableMemory;
  final int price;
  final DeviceType deviceType;

  ShopItemConfiguration({
    required this.title,
    required this.year,
    required this.colors,
    required this.imagesUrls,
    required this.availableMemory,
    required this.price,
    required this.deviceType,
  });
}
