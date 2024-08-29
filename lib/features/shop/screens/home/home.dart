import 'package:clean_ease/common/widgets/layouts/grid_layout.dart';
import 'package:clean_ease/common/widgets/products/product_card/product_card_vertical.dart';

import 'package:clean_ease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/features/shop/screens/all_products/all_products.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_appsbar.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_categories.dart';
import 'package:clean_ease/features/shop/screens/home/widget/promo_slider.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            const AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  AppHomeAppsBar(),
                  SizedBox(height: AppSize.spaceBtwSections),

                  // Search Bar
                  AppSearchContainer(text: 'Search in Store'),
                  SizedBox(height: AppSize.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSize.defaultSpace),
                    child: Column(
                      children: [
                        // heading
                        AppSectionHeading(
                            title: 'Popular Services',
                            showActionButton: false,
                            textColor: Colors.white),
                        SizedBox(height: AppSize.spaceBtwItems),

                        // categories
                        AppHomeCategories(),
                      ],
                    ),
                  ),
                  SizedBox(height: AppSize.spaceBtwSections),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(AppSize.defaultSpace),
              child: Column(
                children: [
                  // Banner Promo
                  const AppPromoSlider(banners: [
                    AppImages.promoBanner1,
                    AppImages.promoBanner2,
                    AppImages.promoBanner3
                  ]),
                  const SizedBox(height: AppSize.spaceBtwSections),

                  // Heading
                  AppSectionHeading(
                      title: 'Popular Services',
                      onPressed: () => Get.to(() => const AllProducts())),
                  const SizedBox(height: AppSize.spaceBtwItems),

                  // Popular services
                  AppGridLayout(
                      itemCount: 4,
                      itemBuilder: (_, index) =>
                          const AppProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
