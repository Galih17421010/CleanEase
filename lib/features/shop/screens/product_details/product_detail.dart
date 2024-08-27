import 'package:clean_ease/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:clean_ease/features/shop/screens/product_details/widgets/product_metadata.dart';
import 'package:clean_ease/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // product image slider
            AppProductImageSlider(),

            // product detail
            Padding(
              padding: EdgeInsets.only(
                  right: AppSize.defaultSpace,
                  left: AppSize.defaultSpace,
                  bottom: AppSize.defaultSpace),
              child: Column(
                children: [
                  // Rating & share button
                  AppRatingAndShare(),

                  // Price Title Stock Brand
                  AppProductMetaData(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
