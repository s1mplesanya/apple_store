import 'package:apple_store/application/ui/screens/shop_item_detail_screen/shop_item_detail_screen_model.dart';
import 'package:apple_store/application/ui/themes/app_colors.dart';
import 'package:apple_store/application/ui/themes/app_text_style.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopItemDetailScreenWidget extends StatelessWidget {
  const ShopItemDetailScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final config = context.read<ShopItemDetailScreenModel>().configuration;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        leadingWidth: 56 + 34,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: SizedBox(
              width: 37,
              height: 37,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  iconSize: 20,
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline_outlined,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: 48,
            ),
          ),
          SliverToBoxAdapter(
            child: Stack(
              alignment: Alignment.center,
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.itemDetailedBackGround,
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(
                    height: 285,
                    width: 285,
                  ),
                ),
                SizedBox(
                  height: 220,
                  child: CachedNetworkImage(
                    imageUrl: config.imagesUrls[0],
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 28,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'awdldawldwaldwla',
              style: AppTextStyle.iStoreStyle(context),
            ),
          ),
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  config.title,
                  style: AppTextStyle.titleDetailStyle(
                    context,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
