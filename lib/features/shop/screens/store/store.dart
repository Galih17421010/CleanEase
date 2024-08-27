import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clean_ease/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          AppCartCounterIcon(onPressed: () {}),
        ],
      ),
      body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: AppHelperFunctions.isDarkMode(context)
                    ? AppColors.black
                    : AppColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(AppSize.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      //search bar
                      const SizedBox(height: AppSize.spaceBtwItems),
                      const AppSearchContainer(
                          text: 'Search in apps',
                          showBorder: true,
                          showBackground: false,
                          padding: EdgeInsets.zero),
                      const SizedBox(height: AppSize.spaceBtwSections),

                      //Feature Brands
                      AppSectionHeading(
                          title: 'Feature Services', onPressed: () {}),
                      const SizedBox(height: AppSize.spaceBtwItems / 1.5),

                      AppRoundedContainer(
                        padding: const EdgeInsets.all(AppSize.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Row(
                          children: [
                            Container(
                              width: 56,
                              height: 56,
                              padding: const EdgeInsets.all(AppSize.sm),
                              decoration: BoxDecoration(
                                color: AppHelperFunctions.isDarkMode(context)
                                    ? AppColors.black
                                    : AppColors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Image(
                                  image: AssetImage(AppImages.cleaningIcon),
                                  color: AppHelperFunctions.isDarkMode(context)
                                      ? AppColors.white
                                      : AppColors.dark),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container()),
    );
  }
}
