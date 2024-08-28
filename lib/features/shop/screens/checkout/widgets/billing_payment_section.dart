import 'package:clean_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppBillingPaymentSection extends StatelessWidget {
  const AppBillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        AppSectionHeading(
            title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: AppSize.spaceBtwItems / 2),
        Row(
          children: [
            AppRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? AppColors.light : AppColors.white,
              padding: const EdgeInsets.all(AppSize.sm),
              child: const Image(
                  image: AssetImage(AppImages.paypal), fit: BoxFit.contain),
            ),
            const SizedBox(width: AppSize.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ],
    );
  }
}
