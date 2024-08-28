import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/common/widgets/products/ratings/rating_indicator.dart';
import 'package:clean_ease/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:clean_ease/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductReviewScreen extends StatelessWidget {
  const ProductReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar:
          const AppsBar(title: Text('Reviews & Ratings'), showBackArrow: true),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                  "Alternatively, your editor might support flutter pub get. Check the docs for your editor to learn more."),
              const SizedBox(height: AppSize.spaceBtwItems),

              // overall product ratings
              const AppOverallProductRating(),
              const AppRatingBarIndicator(rating: 3.5),
              Text("12,611", style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: AppSize.spaceBtwSections),

              // user review list
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
              const UserReviewCard(),
            ],
          ),
        ),
      ),
    );
  }
}
