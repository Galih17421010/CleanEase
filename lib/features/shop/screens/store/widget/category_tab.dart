import 'package:clean_ease/common/widgets/brands/brand_show_case.dart';
import 'package:clean_ease/common/widgets/layouts/grid_layout.dart';
import 'package:clean_ease/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              // Brand
              const AppBrandShowcase(images: [
                AppImages.product1,
                AppImages.product1,
                AppImages.product1
              ]),
              const AppBrandShowcase(images: [
                AppImages.product1,
                AppImages.product1,
                AppImages.product1
              ]),
              const SizedBox(height: AppSize.spaceBtwItems),

              // Product
              AppSectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed: () {}),
              const SizedBox(height: AppSize.spaceBtwItems),

              AppGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const AppProductCardVertical()),
              const SizedBox(height: AppSize.spaceBtwSections),
            ],
          ),
        ),
      ],
    );
  }
}
