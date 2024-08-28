import 'package:clean_ease/common/widgets/products/cart/add_remove_button.dart';
import 'package:clean_ease/common/widgets/products/cart/cart_item.dart';
import 'package:clean_ease/common/widgets/texts/product_price_text.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppCartItems extends StatelessWidget {
  const AppCartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  final bool showAddRemoveButton;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      separatorBuilder: (_, __) =>
          const SizedBox(height: AppSize.spaceBtwSections),
      itemBuilder: (_, __) => Column(
        children: [
          const AppCartItem(),
          if (showAddRemoveButton)
            const SizedBox(height: AppSize.spaceBtwItems),

          // Add remove button
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    // remove button
                    AppProductQuantity(),
                  ],
                ),
                // Total Price
                AppProductPriceText(price: '245'),
              ],
            ),
        ],
      ),
    );
  }
}
