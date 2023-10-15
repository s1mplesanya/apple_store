import 'package:apple_store/application/domain/entity/shop_item.dart';
import 'package:apple_store/application/ui/screens/main_screen/main_screen_model.dart';
import 'package:apple_store/application/ui/themes/app_colors.dart';
import 'package:apple_store/application/ui/themes/app_text_style.dart';
import 'package:apple_store/application/ui/themes/app_theme.dart';
import 'package:apple_store/resourses/svgs.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: topInset,
            ),
          ),
          const SliverToBoxAdapter(
            child: _HeaderWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 17,
            ),
          ),
          const SliverToBoxAdapter(
            child: _FirstListWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 17,
            ),
          ),
          const SliverToBoxAdapter(
            child: _SecondListWidget(),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 17,
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            sliver: _SliverGridWidget(),
          ),
        ],
      ),
    );
  }
}

class _SliverGridWidget extends StatelessWidget {
  const _SliverGridWidget();

  @override
  Widget build(BuildContext context) {
    final shopList = context.read<MainScreenModel>().shopList;

    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return _ShopListItemWidget(index);
        },
        childCount: shopList.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 17,
        mainAxisSpacing: 22,
        childAspectRatio: 0.7,
      ),
    );
  }
}

class _ShopListItemWidget extends StatelessWidget {
  final int index;
  const _ShopListItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    final model = context.read<MainScreenModel>();
    final config = context.read<MainScreenModel>().shopList[index];

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
        child: Column(
          children: [
            _ShopItemColorsWidget(config: config),
            const SizedBox(
              height: 15,
            ),
            Hero(
              tag: config.imagesUrls[0],
              child: SizedBox(
                height: 83,
                child: CachedNetworkImage(
                  imageUrl: config.imagesUrls[0],
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.background2,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                child: Text(
                  config.year,
                  style: AppTextStyle.itemYearStyle(context),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Text(
              config.title,
              style: AppTextStyle.itemTitleStyle(context),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: AppTheme.mainButtonStyle(context),
                onPressed: () => model.openItemDetailView(context, index),
                child: Text(
                  'Detail',
                  style: AppTextStyle.mainButtonTextStyle(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ShopItemColorsWidget extends StatelessWidget {
  const _ShopItemColorsWidget({
    required this.config,
  });

  final ShopItemConfiguration config;

  @override
  Widget build(BuildContext context) {
    final List<Color> colorsList = config.colors.keys.toList();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        colorsList.length,
        (index) => Padding(
          padding:
              EdgeInsets.only(right: index != colorsList.length - 1 ? 5 : 0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: colorsList[index],
              borderRadius: BorderRadius.circular(20),
            ),
            child: const SizedBox(
              width: 10,
              height: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class _SecondListWidget extends StatelessWidget {
  const _SecondListWidget();

  @override
  Widget build(BuildContext context) {
    final secondList = context.read<MainScreenModel>().secondList;
    return SizedBox(
      height: 35, // fix
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: secondList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 25 : 0,
              right: index == secondList.length - 1 ? 25 : 0,
            ),
            child: _SecondListItemWidget(index),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}

class _SecondListItemWidget extends StatelessWidget {
  final int index;
  const _SecondListItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    final model = context.read<MainScreenModel>();

    final secondList = context.read<MainScreenModel>().secondList;

    final selectedSecondList =
        context.select((MainScreenModel model) => model.selectedSecondList);
    return GestureDetector(
      onTap: () => model.updateSecondList(index),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:
              selectedSecondList == index ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
            vertical: 9,
          ),
          child: Column(
            children: [
              Text(
                secondList[index].title,
                style: AppTextStyle.list2TextStyle(
                  context,
                  color: selectedSecondList == index
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FirstListWidget extends StatelessWidget {
  const _FirstListWidget();

  @override
  Widget build(BuildContext context) {
    final firstList = context.read<MainScreenModel>().firstList;
    return SizedBox(
      height: 100, // fix
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: firstList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 25 : 0,
              right: index == firstList.length - 1 ? 25 : 0,
            ),
            child: _FirstListItemWidget(index),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 17,
          );
        },
      ),
    );
  }
}

class _FirstListItemWidget extends StatelessWidget {
  final int index;
  const _FirstListItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    final model = context.read<MainScreenModel>();

    final firstList = context.read<MainScreenModel>().firstList;

    final selectedFirstList =
        context.select((MainScreenModel model) => model.selectedFirstList);
    return GestureDetector(
      onTap: () => model.updateFirstList(index),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: selectedFirstList == index ? AppColors.black : AppColors.white,
          borderRadius: BorderRadius.circular(13),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 26,
            vertical: 22,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 34,
                child: SvgPicture.asset(
                  firstList[index].assetString,
                  color: selectedFirstList == index
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                firstList[index].title,
                style: AppTextStyle.list1TextStyle(
                  context,
                  color: selectedFirstList == index
                      ? AppColors.white
                      : AppColors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppSvg.apple,
                color: AppColors.black,
                height: 27,
              ),
              const SizedBox(
                width: 7,
              ),
              Text(
                'iStore',
                style: AppTextStyle.iStoreStyle(context),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 37,
                height: 37,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    // iconSize: 27,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 13,
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: SizedBox(
                    width: 31,
                    height: 31,
                    child: ClipRRect(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(100)),
                      child: CachedNetworkImage(
                        imageUrl:
                            'https://sun9-4.userapi.com/impg/SD6kjS9MVeCZjrg10lCJYh7jypYpa_yWgN7OCA/CHHzky3zp_Y.jpg?size=960x1280&quality=95&sign=147618485b440bd7bb3281ac9cff0cca&type=album',
                        fit: BoxFit.cover,
                        placeholder: (context, url) {
                          return const SizedBox(
                            width: 31,
                            height: 31,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
