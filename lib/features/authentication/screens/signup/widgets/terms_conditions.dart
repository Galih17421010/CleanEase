import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppTermConditionSignup extends StatelessWidget {
  const AppTermConditionSignup({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(width: AppSize.spaceBtwItems),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${AppTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: AppTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                    )),
            TextSpan(
                text: ' ${AppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: AppTexts.termOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? AppColors.white : AppColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
