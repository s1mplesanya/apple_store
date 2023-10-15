import 'package:apple_store/application/domain/entity/shop_item.dart';
import 'package:apple_store/application/ui/main_navigation/main_navigation.dart';
import 'package:apple_store/resourses/svgs.dart';
import 'package:flutter/material.dart';

enum DeviceType {
  all,
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
  final DeviceType deviceType;
  SecondListItemConfiguration({
    required this.title,
    required this.deviceType,
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
    SecondListItemConfiguration(
      title: 'All',
      deviceType: DeviceType.all,
    ),
    SecondListItemConfiguration(
      title: 'iPhone 15',
      deviceType: DeviceType.iPhone,
    ),
    SecondListItemConfiguration(
      title: 'iPhone 14',
      deviceType: DeviceType.iPhone,
    ),
    SecondListItemConfiguration(
      title: 'iPhone 13',
      deviceType: DeviceType.iPhone,
    ),
    SecondListItemConfiguration(
      title: 'iPhone 12',
      deviceType: DeviceType.iPhone,
    ),
    SecondListItemConfiguration(
      title: 'MacBook',
      deviceType: DeviceType.mac,
    ),
    SecondListItemConfiguration(
      title: 'iMac',
      deviceType: DeviceType.mac,
    ),
    SecondListItemConfiguration(
      title: 'Mac Mini',
      deviceType: DeviceType.mac,
    ),
    SecondListItemConfiguration(
      title: 'iPad Pro',
      deviceType: DeviceType.iPad,
    ),
    SecondListItemConfiguration(
      title: 'iPad Air',
      deviceType: DeviceType.iPad,
    ),
    SecondListItemConfiguration(
      title: 'Ultra',
      deviceType: DeviceType.watch,
    ),
    SecondListItemConfiguration(
      title: 'Series 9',
      deviceType: DeviceType.watch,
    ),
    SecondListItemConfiguration(
      title: 'SE',
      deviceType: DeviceType.watch,
    ),
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
        "https://www.apple.com/v/iphone-15/b/images/overview/contrast/iphone_15pro__ezc4eofw13yq_large.jpg",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-1inch_GEO_US?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1693009279082",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-1inch_AV1?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1693009275111",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-1inch_AV2_GEO_US?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1693009275344",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-1inch_AV3?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1693009275207",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/iphone-15-pro-finish-select-202309-6-1inch_AV4?wid=2560&hei=1440&fmt=p-jpg&qlt=80&.v=1693009276702",
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
    ShopItemConfiguration(
      title: 'MacBook Air 15-inch',
      year: '2023',
      colors: {
        const Color.fromRGBO(47, 54, 65, 1.0): "Midnight",
        const Color.fromRGBO(239, 230, 211, 1.0): "Starlight",
        const Color.fromRGBO(125, 127, 128, 1.0): "Space Gray",
        const Color.fromRGBO(227, 229, 230, 1.0): "Silver",
      },
      imagesUrls: [
        "https://www.apple.com/v/macbook-air-13-and-15-m2/b/images/overview/routers/compare_mba_13_15__tnw1r9b3f5e2_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-midnight-select-202306?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1684518479433",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-starlight-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479450",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-spacegray-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479428",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mba15-silver-select-202306?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1684518479266",
      ],
      availableMemory: ["256GB", "512GB"],
      price: 1299,
      deviceType: DeviceType.mac,
    ),
    ShopItemConfiguration(
      title: 'MacBook Air 13-inch',
      year: '2021',
      colors: {
        const Color.fromRGBO(47, 54, 65, 1.0): "Midnight",
        const Color.fromRGBO(239, 230, 211, 1.0): "Starlight",
        const Color.fromRGBO(125, 127, 128, 1.0): "Space Gray",
        const Color.fromRGBO(227, 229, 230, 1.0): "Silver",
      },
      imagesUrls: [
        "https://www.apple.com/v/macbook-air-13-and-15-m2/b/images/overview/routers/compare_mba_13_15__tnw1r9b3f5e2_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-midnight-select-20220606?wid=904&hei=840&fmt=jpeg&qlt=90&.v=1653084303665",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-starlight-select-20220606?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1653084303732",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-spacegray-select-20220606?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1653084303733",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/macbook-air-silver-select-20220606?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1653084303678",
      ],
      availableMemory: ["256GB", "512GB"],
      price: 1099,
      deviceType: DeviceType.mac,
    ),
    ShopItemConfiguration(
      title: 'MacBook Pro 13-inch',
      year: '2023',
      colors: {
        const Color.fromRGBO(171, 174, 177, 1.0): "Space Gray",
        const Color.fromRGBO(221, 223, 222, 1.0): "Silver",
      },
      imagesUrls: [
        "https://www.apple.com/v/macbook-air-13-and-15-m2/b/images/overview/routers/compare_mbp_13__jugmxc0u0haq_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-spacegray-select-202206?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1664497359481",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp-silver-select-202206?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1664497095569",
      ],
      availableMemory: ["256GB", "512GB"],
      price: 1299,
      deviceType: DeviceType.mac,
    ),
    ShopItemConfiguration(
      title: 'MacBook Pro 14-inch',
      year: '2022',
      colors: {
        const Color.fromRGBO(133, 134, 136, 1.0): "Space Gray",
        const Color.fromRGBO(229, 231, 232, 1.0): "Silver",
      },
      imagesUrls: [
        "https://www.apple.com/v/macbook-air-13-and-15-m2/b/images/overview/routers/compare_mbp_14_16__reijn4mpe76q_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-spacegray-select-202301?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1671304673229",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/mbp14-silver-select-202301?wid=452&hei=420&fmt=jpeg&qlt=95&.v=1671568460416",
      ],
      availableMemory: ["256GB", "512GB"],
      price: 1299,
      deviceType: DeviceType.mac,
    ),
    ShopItemConfiguration(
      title: 'iPad Pro',
      year: '2023',
      colors: {
        const Color.fromRGBO(115, 113, 118, 1.0): "Space Gray",
        const Color.fromRGBO(227, 228, 229, 1.0): "Silver",
      },
      imagesUrls: [
        "https://www.apple.com/v/ipad/shared/compare/l/images/overview/compare_ipad_pro__c8cwfx6evqgm_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-1-202212?wid=2560&hei=1440&fmt=jpeg&qlt=95&.v=1667594391268",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-2-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667594391441",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-3-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667594388852",
      ],
      availableMemory: ["128GB", "256GB", "512GB", "1TB", "2TB"],
      price: 799,
      deviceType: DeviceType.iPad,
    ),
    ShopItemConfiguration(
      title: 'iPad Air',
      year: '2022',
      colors: {
        const Color.fromRGBO(115, 113, 118, 1.0): "Space Gray",
        const Color.fromRGBO(148, 180, 197, 1.0): "Blue",
        const Color.fromRGBO(231, 210, 207, 1.0): "Pink",
        const Color.fromRGBO(193, 190, 214, 1.0): "Purple",
        const Color.fromRGBO(231, 226, 219, 1.0): "Starlight",
      },
      imagesUrls: [
        "https://www.apple.com/v/ipad/shared/compare/l/images/overview/compare_ipad_air__o7xv886z01e2_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-1-202212?wid=2560&hei=1440&fmt=jpeg&qlt=95&.v=1667594391268",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-2-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667594391441",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-pro-finish-unselect-gallery-3-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667594388852",
      ],
      availableMemory: ["64GB", "256GB"],
      price: 599,
      deviceType: DeviceType.iPad,
    ),
    ShopItemConfiguration(
      title: 'iPad 10th',
      year: '2022',
      colors: {
        const Color.fromRGBO(104, 127, 163, 1.0): "Blue",
        const Color.fromRGBO(218, 98, 117, 1.0): "Pink",
        const Color.fromRGBO(236, 220, 104, 1.0): "Yellow",
        const Color.fromRGBO(227, 228, 229, 1.0): "Silver",
      },
      imagesUrls: [
        "https://www.apple.com/v/ipad/shared/compare/l/images/overview/compare_ipad_10_9__fnu1ny10hze6_large.png",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-10th-gen-finish-unselect-gallery-1-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667592106064",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-10th-gen-finish-unselect-gallery-2-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667592114752",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/ipad-10th-gen-finish-unselect-gallery-3-202212?wid=2560&hei=1440&fmt=p-jpg&qlt=95&.v=1667592109587",
      ],
      availableMemory: ["64GB", "256GB"],
      price: 449,
      deviceType: DeviceType.iPad,
    ),
    ShopItemConfiguration(
      title: 'Apple Watch Ultra 2',
      year: '2022',
      colors: {
        const Color.fromRGBO(230, 222, 211, 1.0): "Universal",
      },
      imagesUrls: [
        "https://www.apple.com/v/watch/bf/images/watch-shared-compare/compare_ultra2__fzfgtok6moeq_large.jpg",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT5J3ref_VW_34FR+watch-49-titanium-ultra2_VW_34FR+watch-face-49-alpine-ultra2_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507270905",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT5W3ref_VW_34FR+watch-49-titanium-ultra2_VW_34FR+watch-face-49-trail-ultra2_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507270905",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT653_VW_34FR+watch-49-titanium-ultra2_VW_34FR+watch-face-49-ocean-ultra2_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507270905",
      ],
      availableMemory: ["Alpine Loop", "Trail Loop", "Ocean Band"],
      price: 799,
      deviceType: DeviceType.watch,
    ),
    ShopItemConfiguration(
      title: 'Apple Watch S9',
      year: '2022',
      colors: {
        const Color.fromRGBO(220, 220, 222, 1.0): "Silver",
        const Color.fromRGBO(39, 45, 53, 1.0): "Midnight",
        const Color.fromRGBO(192, 168, 173, 1.0): "Pink",
      },
      imagesUrls: [
        "https://www.apple.com/v/watch/bf/images/watch-shared-compare/compare_s9__gbbla3ej3p6y_large.jpg",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT413ref_VW_34FR+watch-case-45-aluminum-silver-nc-s9_VW_34FR+watch-face-45-aluminum-silver-s9_VW_34FR_WF_CO?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507905569",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MTGL3ref_VW_34FR+watch-case-45-aluminum-midnight-nc-s9_VW_34FR+watch-face-45-aluminum-midnight-s9_VW_34FR_WF_CO?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507905569",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT5F3_VW_34FR+watch-case-45-aluminum-pink-nc-s9_VW_34FR+watch-face-45-aluminum-pink-s9_VW_34FR_WF_CO?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507905569",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT8F3ref_VW_34FR+watch-case-45-stainless-silver-s9_VW_34FR+watch-face-45-stainless-silver-s9_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507905569",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MUVE3ref_VW_34FR+watch-case-45-aluminum-starlight-nc-s9_VW_34FR+watch-face-45-aluminum-melonium-nike_VW_34FR_WF_CO?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694508058746",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MUJY3_VW_34FR+watch-case-45-aluminum-pink-nc-s9_VW_34FR+watch-face-45-aluminum-starlight-nike_VW_34FR_WF_CO?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694508058746",
      ],
      availableMemory: [
        "Solo Loop",
        "Sport Loop",
        "Modern Buckle",
        "Nike Sport",
        "Braided Solo Loop"
      ],
      price: 399,
      deviceType: DeviceType.watch,
    ),
    ShopItemConfiguration(
      title: 'Apple Watch SE',
      year: '2023',
      colors: {
        const Color.fromRGBO(220, 220, 222, 1.0): "Silver",
        const Color.fromRGBO(39, 45, 53, 1.0): "Midnight",
        const Color.fromRGBO(212, 202, 196, 1.0): "Starlight",
      },
      imagesUrls: [
        "https://www.apple.com/v/watch/bf/images/watch-shared-compare/compare_se__b3w7lpf3fahe_large.jpg",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT5E3_VW_34FR+watch-case-44-aluminum-starlight-nc-se_VW_34FR+watch-face-44-aluminum-starlight-se_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507496485",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MTFR3ref_VW_34FR+watch-case-44-aluminum-silver-nc-se_VW_34FR+watch-face-44-aluminum-silver-se_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507496485",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT463ref_VW_34FR+watch-case-44-aluminum-midnight-nc-se_VW_34FR+watch-face-44-aluminum-midnight-se_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507496485",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT3D3ref_VW_34FR+watch-case-44-aluminum-midnight-nc-se_VW_34FR+watch-face-44-aluminum-midnight-se_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507496485",
        "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MT8U3ref_VW_34FR+watch-case-44-aluminum-starlight-nc-se_VW_34FR+watch-face-44-aluminum-starlight-se_VW_34FR?wid=375&hei=356&trim=1%2C0&fmt=p-jpg&qlt=95&.v=1694507496485",
      ],
      availableMemory: [
        "Solo Loop",
        "Sport Band",
        "Braided Solo Loop",
        "Sport Loop"
      ],
      price: 249,
      deviceType: DeviceType.watch,
    ),
  ];
  List<ShopItemConfiguration> get shopList => _shopList;

  List<ShopItemConfiguration> _selectedShopList = [];
  List<ShopItemConfiguration> get selectedShopList => _selectedShopList;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  int _selectedFirstList = 0;
  int get selectedFirstList => _selectedFirstList;

  int _selectedSecondList = 0;
  int get selectedSecondList => _selectedSecondList;

  MainScreenModel() {
    _initialize();
  }

  void _initialize() async {
    updateFirstList(_selectedFirstList);
  }

  void updateFirstList(int index) async {
    _selectedShopList = [];
    _updateLoadingStatus(true);
    _selectedFirstList = index;
    updateSecondList(0);
    _updateLoadingStatus(false);
  }

  void _updateLoadingStatus(bool status) {
    _isLoading = status;
    notifyListeners();
  }

  DeviceType getDeviceTypeFromIndex(int index) {
    late final DeviceType deviceType;
    switch (_selectedFirstList) {
      case 0:
        deviceType = DeviceType.mac;
        break;
      case 1:
        deviceType = DeviceType.iPhone;
        break;
      case 2:
        deviceType = DeviceType.iPad;
        break;
      case 3:
        deviceType = DeviceType.watch;
        break;
      default:
        deviceType = DeviceType.mac;
        break;
    }
    return deviceType;
  }

  void updateSecondList(int index) {
    _selectedShopList = [];
    _selectedShopList = _shopList.where((item) {
      if (item.deviceType == getDeviceTypeFromIndex(_selectedFirstList)) {
        if (index != 0 && item.title.contains(_secondList[index].title) ||
            index == 0) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    }).toList();
    _selectedSecondList = index;
    notifyListeners();
  }

  void openItemDetailView(BuildContext context, int index) {
    Navigator.pushNamed(
      context,
      MainNavigationScreens.shopItemDetailView,
      arguments: _selectedShopList[index],
    );
  }
}
