import 'package:apple_store/application/ui/themes/app_colors.dart';
import 'package:apple_store/application/ui/themes/app_text_style.dart';
import 'package:apple_store/resourses/svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _HeaderWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: _FirstListWidget(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: _SecondListWidget(),
          ),
        ],
      ),
    ));
  }
}

class _SecondListWidget extends StatelessWidget {
  const _SecondListWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 35, // fix
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white,
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
                      'MacBook',
                      style: AppTextStyle.list2TextStyle(
                        context,
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 10,
            );
          },
        ),
      ),
    );
  }
}

class _FirstListWidget extends StatelessWidget {
  const _FirstListWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: SizedBox(
        height: 88, // fix
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 26,
                  vertical: 26,
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(AppSvg.mac),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Mac',
                      style: AppTextStyle.list1TextStyle(context),
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              width: 17,
            );
          },
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
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: SizedBox(
                    width: 31,
                    height: 31,
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
