import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_ease/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:clean_ease/common/widgets/images/app_rounded_image.dart';
import 'package:clean_ease/features/shop/controller/home_controller.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppPromoSlider extends StatelessWidget {
  const AppPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => AppRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: AppSize.spaceBtwItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  AppCircularContainer(
                      width: 20,
                      height: 4,
                      margin: EdgeInsets.only(right: 10),
                      backgroundColor:
                          controller.carouselCurrentIndex.value == i
                              ? AppColors.primary
                              : AppColors.grey),
              ],
            ),
          ),
        )
      ],
    );
  }
}
