import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/brands/brand_card.dart';
import 'package:clean_ease/common/widgets/products/sortable/sortable_products.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppsBar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              // Brand Detail
              AppBrandCard(showBorder: true),
              SizedBox(height: AppSize.spaceBtwSections),

              AppSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
