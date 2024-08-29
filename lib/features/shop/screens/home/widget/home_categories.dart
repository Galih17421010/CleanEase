import 'package:clean_ease/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:clean_ease/features/shop/screens/sub_category/sub_categories.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppHomeCategories extends StatelessWidget {
  const AppHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return AppVeritcalImageText(
            image: AppImages.pestcontrolIcon,
            title: 'Servicess',
            onTap: () => Get.to(() => const SubCategoryScreen()),
          );
        },
      ),
    );
  }
}
