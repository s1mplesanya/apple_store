import 'package:apple_store/application/ui/screens/shop_item_detail_screen/shop_item_detail_screen_model.dart';
import 'package:apple_store/application/ui/themes/app_colors.dart';
import 'package:apple_store/application/ui/themes/app_text_style.dart';
import 'package:apple_store/application/ui/themes/app_theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopItemDetailScreenWidget extends StatelessWidget {
  const ShopItemDetailScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      // appBar: AppBar(
      // automaticallyImplyLeading: false,
      // leading: IconButton(
      //   icon: const Icon(
      //     Icons.arrow_back_rounded,
      //   ),
      //   onPressed: () => Navigator.of(context).pop(),
      // ),
      // leadingWidth: 56 + 34,
      // actions: [
      //   Padding(
      //     padding: const EdgeInsets.only(right: 24),
      //     child: SizedBox(
      //       width: 37,
      //       height: 37,
      //       child: DecoratedBox(
      //         decoration: BoxDecoration(
      //           color: AppColors.white,
      //           borderRadius: BorderRadius.circular(50),
      //         ),
      //         child: IconButton(
      //           padding: const EdgeInsets.all(0),
      //           iconSize: 20,
      //           onPressed: () {},
      //           icon: const Icon(
      //             Icons.favorite_outline_outlined,
      //             color: AppColors.black,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ],
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            backgroundColor: Colors.transparent,
            leadingWidth: 56 + 33,
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 33),
                child: _AddToFavoriteButton(),
              ),
            ],
          ),
          const SliverToBoxAdapter(
            child: _MainImageWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 28,
            ),
          ),
          const SliverToBoxAdapter(
            child: _AddedImagesWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 34,
            ),
          ),
          const SliverToBoxAdapter(
            child: _MainInformationMenuWidget(),
          ),
        ],
      ),
    );
  }
}

class _AddedImagesWidget extends StatelessWidget {
  const _AddedImagesWidget();

  @override
  Widget build(BuildContext context) {
    final model = context.read<ShopItemDetailScreenModel>();
    final imagesUrls =
        context.read<ShopItemDetailScreenModel>().configuration.imagesUrls;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 80),
      child: SizedBox(
        height: 61,
        child: PageView(
          controller: model.pageController,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index) => model.onPageChanged(index),
          children: imagesUrls.map((photoUrl) {
            return _AddedImageWidget(photoUrl);
          }).toList(),
        ),
      ),
    );
  }
}

class _AddedImageWidget extends StatelessWidget {
  final String photoUrl;
  const _AddedImageWidget(this.photoUrl);

  @override
  Widget build(BuildContext context) {
    final model = context.read<ShopItemDetailScreenModel>();
    return GestureDetector(
      onTap: () => model.updateMainPhoto(photoUrl),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // const DecoratedBox(
          //   decoration: BoxDecoration(
          //     color: AppColors.white,
          //     shape: BoxShape.circle,
          //   ),
          //   child: SizedBox(
          //     height: 61,
          //     width: 61,
          //   ),
          // ),
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     color: AppColors.black.withOpacity(0.08),
          //     shape: BoxShape.circle,
          //   ),
          //   child: const SizedBox(
          //     height: 45,
          //     width: 45,
          //   ),
          // ),
          // DecoratedBox(
          //   decoration: BoxDecoration(
          //     color: AppColors.black.withOpacity(0.09),
          //     shape: BoxShape.circle,
          //   ),
          //   child: const SizedBox(
          //     height: 32,
          //     width: 32,
          //   ),
          // ),
          SizedBox(
            height: 32,
            child: CachedNetworkImage(
              imageUrl: photoUrl,
            ),
          ),
        ],
      ),
    );
  }
}

class _MainImageWidget extends StatelessWidget {
  const _MainImageWidget();

  @override
  Widget build(BuildContext context) {
    final imagesUrls =
        context.read<ShopItemDetailScreenModel>().configuration.imagesUrls;
    final selectedImageId = context
        .select((ShopItemDetailScreenModel model) => model.selectedPhotoId);
    return Stack(
      alignment: Alignment.center,
      children: [
        // const DecoratedBox(
        //   decoration: BoxDecoration(
        //     color: AppColors.itemDetailedBackGround,
        //     shape: BoxShape.circle,
        //   ),
        //   child: SizedBox(
        //     height: 285,
        //     width: 285,
        //   ),
        // ),
        Hero(
          tag: imagesUrls[selectedImageId],
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            switchInCurve: Curves.easeInOut,
            switchOutCurve: Curves.easeInOut,
            child: SizedBox(
              key: ValueKey<int>(selectedImageId),
              height: 220,
              child: CachedNetworkImage(
                imageUrl: imagesUrls[selectedImageId],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _MainInformationMenuWidget extends StatelessWidget {
  const _MainInformationMenuWidget();

  @override
  Widget build(BuildContext context) {
    final config = context.read<ShopItemDetailScreenModel>().configuration;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    config.title,
                    style: AppTextStyle.titleDetailStyle(
                      context,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Text(
                    config.year,
                    style: AppTextStyle.yearDetailStyle(
                      context,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Text(
                '\$${config.price.toString()}',
                style: AppTextStyle.priceDetailStyle(
                  context,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Text(
                'COLORS:',
                style: AppTextStyle.descriptionDetailStyle(
                  context,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const _AllAvailableColorsWidget(),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 33),
              child: Text(
                'MEMORY:',
                style: AppTextStyle.descriptionDetailStyle(
                  context,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const _AllAvailableMemoryWidget(),
            const SizedBox(
              height: 28,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 33),
              child: _CountAndBuyWidget(),
            ),
            const SizedBox(
              height: 28,
            ),
          ],
        ),
      ),
    );
  }
}

class _AddToFavoriteButton extends StatelessWidget {
  const _AddToFavoriteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 37,
      height: 37,
      child: IconButton(
        padding: const EdgeInsets.all(0),
        iconSize: 21,
        onPressed: () {},
        icon: const Icon(
          Icons.favorite_outline_outlined,
          color: AppColors.black,
        ),
      ),
    );
  }
}

class _CountAndBuyWidget extends StatelessWidget {
  const _CountAndBuyWidget();

  @override
  Widget build(BuildContext context) {
    final buyAmount =
        context.select((ShopItemDetailScreenModel model) => model.buyAmount);
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              const _MinusButtonWidget(),
              const Spacer(),
              Text(
                buyAmount.toString(),
                style: AppTextStyle.itemTitleStyle(context),
              ),
              const Spacer(),
              const _AddButtonWidget(),
            ],
          ),
        ),
        const SizedBox(
          width: 22,
        ),
        Expanded(
          flex: 4,
          child: FilledButton(
            style: AppTheme.mainButtonStyle(context),
            onPressed: () {},
            child: Text(
              'Buy',
              style: AppTextStyle.buyButtonStyle(context),
            ),
          ),
        ),
      ],
    );
  }
}

class _AddButtonWidget extends StatelessWidget {
  const _AddButtonWidget();

  @override
  Widget build(BuildContext context) {
    final model = context.read<ShopItemDetailScreenModel>();
    return SizedBox(
      width: 30,
      height: 30,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppColors.black,
          shape: BoxShape.circle,
        ),
        child: IconButton(
          padding: const EdgeInsets.all(0),
          iconSize: 24,
          onPressed: () => model.updateAmount(
            AmountOperationType.add,
          ),
          icon: const Icon(
            Icons.add,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}

class _MinusButtonWidget extends StatelessWidget {
  const _MinusButtonWidget();

  @override
  Widget build(BuildContext context) {
    final model = context.read<ShopItemDetailScreenModel>();
    final buyAmount =
        context.select((ShopItemDetailScreenModel model) => model.buyAmount);
    return AnimatedContainer(
      width: 30,
      height: 30,
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        color: buyAmount > 1
            ? AppColors.black
            : const Color(0xFFAAAAAA).withOpacity(0.1),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        padding: const EdgeInsets.all(0),
        iconSize: 24,
        onPressed: () => model.updateAmount(
          AmountOperationType.minus,
        ),
        icon: const Icon(
          Icons.remove,
          color: AppColors.background2,
        ),
      ),
    );
  }
}

class _AllAvailableMemoryWidget extends StatelessWidget {
  const _AllAvailableMemoryWidget();

  @override
  Widget build(BuildContext context) {
    final availableMemory =
        context.read<ShopItemDetailScreenModel>().configuration.availableMemory;

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 33 : 0,
              right: index == availableMemory.length - 1 ? 33 : 0,
            ),
            child: _AvailableMemoryWidget(
              index,
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 9,
          );
        },
        itemCount: availableMemory.length,
      ),
    );
  }
}

class _AvailableMemoryWidget extends StatelessWidget {
  final int index;
  const _AvailableMemoryWidget(this.index);

  @override
  Widget build(BuildContext context) {
    final model = context.read<ShopItemDetailScreenModel>();
    final memory = model.configuration.availableMemory[index];

    final selectedId = context
        .select((ShopItemDetailScreenModel model) => model.selectedMemory);
    final isSelected = selectedId == index;
    return GestureDetector(
      onTap: () => model.selectMemory(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate,
        decoration: BoxDecoration(
          borderRadius: isSelected
              ? BorderRadius.circular(20)
              : BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? AppColors.black : AppColors.white,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Center(
            child: Text(
              memory,
              style: AppTextStyle.numberTextDetailStyle(context),
            ),
          ),
        ),
      ),
    );
  }
}

class _AllAvailableColorsWidget extends StatelessWidget {
  const _AllAvailableColorsWidget();

  @override
  Widget build(BuildContext context) {
    final colors =
        context.read<ShopItemDetailScreenModel>().configuration.colors;
    final colorsKeys = context
        .read<ShopItemDetailScreenModel>()
        .configuration
        .colors
        .keys
        .toList();

    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 33 : 0,
              right: index == colorsKeys.length - 1 ? 33 : 0,
            ),
            child: _AvailableColorWidget(
              index,
              colors[colorsKeys[index]] ?? "Unknown",
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 9,
          );
        },
        itemCount: colorsKeys.length,
      ),
    );
  }
}

class _AvailableColorWidget extends StatelessWidget {
  final int index;
  final String colorName;
  const _AvailableColorWidget(this.index, this.colorName);

  @override
  Widget build(BuildContext context) {
    final model = context.read<ShopItemDetailScreenModel>();
    final color = model.configuration.colors.keys.toList()[index];

    final selectedId = context
        .select((ShopItemDetailScreenModel model) => model.selectedColor);
    final isSelected = selectedId == index;
    return GestureDetector(
      onTap: () => model.selectColor(index),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.decelerate,
        decoration: BoxDecoration(
          borderRadius: isSelected
              ? BorderRadius.circular(20)
              : BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? AppColors.black : AppColors.white,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: const SizedBox(
                  height: 25,
                  width: 25,
                ),
              ),
              const SizedBox(
                width: 14,
              ),
              Text(
                colorName,
                style: AppTextStyle.numberTextDetailStyle(context),
              ),
              const SizedBox(
                width: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
