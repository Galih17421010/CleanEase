import 'package:clean_ease/features/shop/screens/product_reviews/widgets/progress_indicator_rating.dart';
import 'package:flutter/material.dart';

class AppOverallProductRating extends StatelessWidget {
  const AppOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child:
                Text('4.8', style: Theme.of(context).textTheme.displayLarge)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              AppRatingProgresIndicator(text: '5', value: 1.0),
              AppRatingProgresIndicator(text: '4', value: 0.8),
              AppRatingProgresIndicator(text: '3', value: 0.6),
              AppRatingProgresIndicator(text: '2', value: 0.4),
              AppRatingProgresIndicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
