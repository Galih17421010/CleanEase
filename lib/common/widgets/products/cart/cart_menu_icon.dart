import 'package:clean_ease/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';
import 'package:flutter/material.dart';

class AppCartCounterIcon extends StatelessWidget {
  const AppCartCounterIcon(
      {super.key, required this.onPressed, required this.iconColor});

  final Color? iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: const Icon(Iconsax.shopping_bag, color: AppColors.white)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(100)),
            child: Center(
                child: Text('2',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .apply(color: AppColors.white, fontSizeFactor: 0.8))),
          ),
        ),
      ],
    );
  }
}
