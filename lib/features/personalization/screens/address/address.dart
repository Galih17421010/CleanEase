import 'package:clean_ease/common/widgets/appbar/appbar.dart';
import 'package:clean_ease/features/personalization/screens/address/add_new_address.dart';
import 'package:clean_ease/features/personalization/screens/address/widgets/single_address.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () => Get.to(() => const AddNewAddressScreen()),
        child: const Icon(Iconsax.add, color: AppColors.white),
      ),
      appBar: AppsBar(
        showBackArrow: true,
        title:
            Text('Address', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              AppSingleAddress(selectedAddress: true),
              AppSingleAddress(selectedAddress: false),
            ],
          ),
        ),
      ),
    );
  }
}
