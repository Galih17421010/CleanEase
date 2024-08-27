import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clean_ease/common/widgets/images/app_circular_image.dart';
import 'package:clean_ease/common/widgets/layouts/grid_layout.dart';
import 'package:clean_ease/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:clean_ease/common/widgets/texts/app_brand_title_verified_icon.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/enums.dart';
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

                      AppGridLayout(
                          itemCount: 4,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {},
                              child: AppRoundedContainer(
                                padding: const EdgeInsets.all(AppSize.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  children: [
                                    // Icon
                                    AppCircularImage(
                                      isNetworkImage: false,
                                      image: AppImages.cleaningIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          AppHelperFunctions.isDarkMode(context)
                                              ? AppColors.white
                                              : AppColors.black,
                                    ),
                                    const SizedBox(
                                        width: AppSize.spaceBtwItems / 2),

                                    // Text
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const AppBrandTitleVerifiedIcon(
                                            title: 'Nike',
                                            brandTextSize: TextSize.large),
                                        Text(
                                          '265 products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          })
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
