import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class AppHomeAppsBar extends StatelessWidget {
  const AppHomeAppsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppsBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: AppColors.grey)),
          Text(AppTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .apply(color: AppColors.white)),
        ],
      ),
      actions: [
        AppCartCounterIcon(
          onPressed: () {},
          iconColor: AppColors.white,
        )
      ],
    );
  }
}
