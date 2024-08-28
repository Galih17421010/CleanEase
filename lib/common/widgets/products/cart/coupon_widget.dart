import 'package:clean_ease/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppCouponCode extends StatelessWidget {
  const AppCouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return AppRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AppColors.dark : AppColors.white,
      padding: const EdgeInsets.only(
          top: AppSize.sm,
          bottom: AppSize.sm,
          right: AppSize.sm,
          left: AppSize.md),
      child: Row(
        children: [
          // Textfield
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          //button
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? AppColors.white.withOpacity(0.5)
                    : AppColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: Colors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}
