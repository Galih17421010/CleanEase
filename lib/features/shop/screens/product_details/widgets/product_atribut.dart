import 'package:clean_ease/common/widgets/chips/choice_chip.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clean_ease/common/widgets/texts/product_price_text.dart';
import 'package:clean_ease/common/widgets/texts/product_title_text.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppProductAtributes extends StatelessWidget {
  const AppProductAtributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSize.md),
          backgroundColor: dark ? AppColors.darkergrey : AppColors.grey,
          child: Column(
            children: [
              // Title price and stock
              Row(
                children: [
                  const AppSectionHeading(
                      title: 'Varian', showActionButton: false),
                  const SizedBox(width: AppSize.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AppProductTitleText(
                              title: 'Price', smallSize: true),

                          // actual price
                          Text(
                            'Rp25',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: AppSize.spaceBtwItems),

                          // sale price
                          const AppProductPriceText(price: '20'),
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const AppProductTitleText(
                              title: 'Stock : ', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // Varian Description
              const AppProductTitleText(
                title: 'This is description services',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: AppSize.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                    text: 'Green', selected: true, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'Blue', selected: false, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: AppSize.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                    text: 'Eu 34', selected: true, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'Eu 35', selected: false, onSelected: (value) {}),
                AppChoiceChip(
                    text: 'Eu 36', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
