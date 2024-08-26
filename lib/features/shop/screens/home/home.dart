import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clean_ease/common/widgets/images/app_rounded_image.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_appsbar.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_categories.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            AppPrimaryHeaderContainer(
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
                  )
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.all(AppSize.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 1,
                    ),
                    items: [
                      AppRoundedImage(imageUrl: AppImages.promoBanner1),
                      AppRoundedImage(imageUrl: AppImages.promoBanner2),
                      AppRoundedImage(imageUrl: AppImages.promoBanner3),
                    ],
                  ),
                  const SizedBox(height: AppSize.spaceBtwItems),
                  Row(
                    children: [
                      for (int i = 0; i < 3; i++)
                        const AppCircularContainer(
                          width: 20,
                          height: 4,
                          margin: EdgeInsets.only(right: 10),
                          backgroundColor: Colors.green,
                        ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
