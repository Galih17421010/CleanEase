import 'package:clean_ease/common/widgets/brands/brand_card.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppBrandShowcase extends StatelessWidget {
  const AppBrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkgrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: AppSize.spaceBtwItems),
      padding: const EdgeInsets.all(AppSize.md),
      child: Column(
        children: [
          const AppBrandCard(showBorder: false),
          const SizedBox(height: AppSize.spaceBtwItems),
          Row(
              children: images
                  .map((image) => brandTopProductImageWidget(image, context))
                  .toList()),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    return Expanded(
        child: AppRoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(AppSize.md),
      margin: const EdgeInsets.only(right: AppSize.sm),
      backgroundColor: AppHelperFunctions.isDarkMode(context)
          ? AppColors.darkergrey
          : AppColors.light,
      child: Image(fit: BoxFit.contain, image: AssetImage(image)),
    ));
  }
}
