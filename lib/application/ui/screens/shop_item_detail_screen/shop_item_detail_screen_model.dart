import 'package:flutter/material.dart';
import 'package:apple_store/application/domain/entity/shop_item.dart';

enum AmountOperationType {
  add,
  minus,
}

class ShopItemDetailScreenModel extends ChangeNotifier {
  final ShopItemConfiguration _configuration;
  ShopItemConfiguration get configuration => _configuration;

  // List<Image>? _images;
  // List<Image>? get images => _images;

  int _selectedPhotoId = 0;
  int get selectedPhotoId => _selectedPhotoId;

  final PageController _pageController =
      PageController(viewportFraction: 0.333, initialPage: 0);
  PageController get pageController => _pageController;

  int _buyAmount = 1;
  int get buyAmount => _buyAmount;

  int _selectedColor = 0;
  int get selectedColor => _selectedColor;

  int _selectedMemory = 0;
  int get selectedMemory => _selectedMemory;

  ShopItemDetailScreenModel(
    this._configuration,
  ) {
    _initialize();
  }

  void _initialize() async {
    // await _removeBg();
  }

  Future<void> _removeBg() async {
    // _images = [];
    // for (var imgUrl in _configuration.imagesUrls) {
    //   try {
    //     final newImageBytes =
    //         await RemoveBackgroundApiClient.instance.removeBg(imgUrl);
    //     if (newImageBytes != null) {
    //       final image = Image.memory(newImageBytes);
    //       _images!.add(image);
    //     }
    //   } catch (e) {
    //     print(e.toString());
    //   }
    // }
    // print(_images);
    // _selectedPhotoId = 1;
    // notifyListeners();
  }

  void updateAmount(AmountOperationType type) {
    if (_buyAmount > 99 ||
        _buyAmount < 2 && type == AmountOperationType.minus) {
      return;
    }
    switch (type) {
      case AmountOperationType.add:
        _buyAmount += 1;
        break;
      case AmountOperationType.minus:
        _buyAmount -= 1;
        break;
    }
    notifyListeners();
  }

  void selectColor(int index) {
    _selectedColor = index;
    notifyListeners();
  }

  void selectMemory(int index) {
    _selectedMemory = index;
    notifyListeners();
  }

  void updateMainPhoto(String imgUrl) {
    _selectedPhotoId =
        _configuration.imagesUrls.indexWhere((element) => element == imgUrl);
    notifyListeners();
    _pageController.animateToPage(
      _selectedPhotoId,
      duration: const Duration(milliseconds: 250),
      curve: Curves.decelerate,
    );
  }

  void onPageChanged(int index) {
    _selectedPhotoId = index;
    notifyListeners();
  }
}
