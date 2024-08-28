import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/products/cart/add_remove_button.dart';
import 'package:clean_ease/common/widgets/products/cart/cart_item.dart';
import 'package:clean_ease/common/widgets/texts/product_price_text.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
          showBackArrow: true,
          title:
              Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpace),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: 4,
          separatorBuilder: (_, __) =>
              const SizedBox(height: AppSize.spaceBtwSections),
          itemBuilder: (_, __) => const Column(
            children: [
              AppCartItem(),
              SizedBox(height: AppSize.spaceBtwItems),
              Row(
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
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpace),
        child:
            ElevatedButton(onPressed: () {}, child: Text('Checkout Rp 256.0')),
      ),
    );
  }
}
