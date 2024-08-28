import 'package:clean_ease/common/widgets/texts/section_heading.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBillingAddressSection extends StatelessWidget {
  const AppBillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppSectionHeading(
            title: 'Shipping Address', buttonTitle: 'Change', onPressed: () {}),
        Text('Galih AGus', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: AppSize.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: AppSize.spaceBtwItems),
            Text('+628 847400909',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: AppSize.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: AppSize.spaceBtwItems),
            Expanded(
                child: Text('Tangerang Selatan Indonesia pusaka',
                    style: Theme.of(context).textTheme.bodyMedium,
                    softWrap: true)),
          ],
        ),
      ],
    );
  }
}
