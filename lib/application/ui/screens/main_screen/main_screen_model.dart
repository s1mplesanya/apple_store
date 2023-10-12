import 'package:apple_store/application/domain/entity/shop_item.dart';
import 'package:apple_store/application/ui/main_navigation/main_navigation.dart';
import 'package:apple_store/resourses/svgs.dart';
import 'package:flutter/material.dart';

enum DeviceType {
  mac,
  iPhone,
  iPad,
  watch,
}

class FirstListItemConfiguration {
  final String title;
  final String assetString;
  final DeviceType deviceType;
  FirstListItemConfiguration({
    required this.title,
    required this.assetString,
    required this.deviceType,
  });
}

class SecondListItemConfiguration {
  final String title;
  SecondListItemConfiguration({
    required this.title,
  });
}

class MainScreenModel extends ChangeNotifier {
  final _firstList = <FirstListItemConfiguration>[
    FirstListItemConfiguration(
      title: 'Mac',
      assetString: AppSvg.mac,
      deviceType: DeviceType.mac,
    ),
    FirstListItemConfiguration(
      title: 'iPhone',
      assetString: AppSvg.iphone,
      deviceType: DeviceType.iPhone,
    ),
    FirstListItemConfiguration(
      title: 'iPad',
      assetString: AppSvg.tablet,
      deviceType: DeviceType.iPad,
    ),
    FirstListItemConfiguration(
      title: 'Watch',
      assetString: AppSvg.watch,
      deviceType: DeviceType.watch,
    ),
  ];
  List<FirstListItemConfiguration> get firstList => _firstList;

  final _secondList = <SecondListItemConfiguration>[
    SecondListItemConfiguration(title: 'iPhone 15'),
    SecondListItemConfiguration(title: 'iPhone 14'),
    SecondListItemConfiguration(title: 'iPhone 13'),
    SecondListItemConfiguration(title: 'iPhone 12'),
  ];
  List<SecondListItemConfiguration> get secondList => _secondList;

  final _shopList = <ShopItemConfiguration>[
    ShopItemConfiguration(
      title: 'iPhone 15 Pro',
      year: '2023',
      colors: {
        const Color.fromRGBO(186, 181, 166, 1.0): "Natural Titanium",
        const Color.fromRGBO(79, 85, 101, 1.0): "Blue Titanium",
        const Color.fromRGBO(213, 212, 207, 1.0): "White Titanium",
        const Color.fromRGBO(55, 57, 58, 1.0): "Black Titanium",
      },
      imagesUrls: [
        "https://www.apple.com/v/iphone-15/b/images/overview/contrast/iphone_15pro__ezc4eofw13yq_large.jpg"
      ],
      availableMemory: ["128GB", "256GB", "512GB", "1TB"],
      price: 999,
      deviceType: DeviceType.iPhone,
    ),
    ShopItemConfiguration(
      title: 'iPhone 15',
      year: '2023',
      colors: {
        const Color.fromRGBO(208, 215, 218, 1.0): "Blue",
        const Color.fromRGBO(226, 203, 205, 1.0): "Pink",
        const Color.fromRGBO(228, 225, 193, 1.0): "Yellow",
        const Color.fromRGBO(201, 212, 196, 1.0): "Green",
        const Color.fromRGBO(60, 63, 66, 1.0): "Black",
      },
      imagesUrls: [
        "https://www.apple.com/v/iphone-15/b/images/overview/contrast/iphone_15__dozjxuchowcy_large.jpg"
      ],
      availableMemory: ["128GB", "256GB", "512GB"],
      price: 799,
      deviceType: DeviceType.iPhone,
    ),
    ShopItemConfiguration(
      title: 'iPhone 14',
      year: '2022',
      colors: {
        const Color.fromRGBO(158, 175, 193, 1.0): "Blue",
        const Color.fromRGBO(223, 215, 228, 1.0): "Purple",
        const Color.fromRGBO(244, 239, 139, 1.0): "Yellow",
        const Color.fromRGBO(37, 43, 51, 1.0): "Midnight",
        const Color.fromRGBO(242, 239, 235, 1.0): "StarLight",
        const Color.fromRGBO(239, 0, 39, 1.0): "(PRODUCT)RED",
      },
      imagesUrls: [
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-compare-iphone-14-202309?wid=384&hei=512&fmt=jpeg&qlt=90&.v=1693516153040"
      ],
      availableMemory: ["128GB", "256GB", "512GB"],
      price: 699,
      deviceType: DeviceType.iPhone,
    ),
  ];
  List<ShopItemConfiguration> get shopList => _shopList;

  int _selectedFirstList = 0;
  int get selectedFirstList => _selectedFirstList;

  int _selectedSecondList = 0;
  int get selectedSecondList => _selectedSecondList;

  void updateFirstList(int index) {
    _selectedFirstList = index;
    notifyListeners();
  }

  void updateSecondList(int index) {
    _selectedSecondList = index;
    notifyListeners();
  }

  void openItemDetailView(BuildContext context, int index) {
    Navigator.pushNamed(
      context,
      MainNavigationScreens.shopItemDetailView,
      arguments: _shopList[index],
    );
  }
}
