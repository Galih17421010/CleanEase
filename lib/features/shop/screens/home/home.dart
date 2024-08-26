import 'package:clean_ease/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_appsbar.dart';
import 'package:clean_ease/features/shop/screens/home/widget/home_categories.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
