import 'package:clean_ease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_appsbar.dart';
import 'package:clean_ease/utils/constants/colors.dart';
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
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  // App Bar
                  const AppHomeAppsBar(),
                  const SizedBox(height: AppSize.spaceBtwSections),

                  // Search Bar
                  const AppSearchContainer(text: 'Search in Store'),
                  const SizedBox(height: AppSize.spaceBtwSections),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: AppSize.defaultSpace),
                    child: Column(
                      children: [
                        // heading
                        AppSectionHeading(
                            title: 'Popular Services', showActionButton: false),
                        const SizedBox(height: AppSize.spaceBtwItems),

                        // categories
                        SizedBox(
                          height: 80,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (_, index) {
                              return Column(
                                children: [
                                  Container(
                                    width: 56,
                                    height: 56,
                                    padding: const EdgeInsets.all(AppSize.sm),
                                    decoration: BoxDecoration(
                                      color: AppColors.white,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: Center(
                                      child: Image(
                                          image:
                                              AssetImage(AppImages.sportIcon),
                                          fit: BoxFit.cover,
                                          color: AppColors.dark),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
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
