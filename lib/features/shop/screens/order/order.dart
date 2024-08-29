import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/features/shop/screens/order/widgets/orders_list.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppsBar(
          title: Text('My Orders',
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: const Padding(
        padding: EdgeInsets.all(AppSize.defaultSpace),

        // Orders
        child: AppOrderListItems(),
      ),
    );
  }
}
