import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            children: [
              //image
              Image(
                  image: const AssetImage(AppImages.deliveredEmailIllustration),
                  width: AppHelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: AppSize.spaceBtwSections),

              // Title
              Text(AppTexts.changeYourPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSize.spaceBtwItems),
              Text(AppTexts.changeYourPasswordSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              const SizedBox(height: AppSize.spaceBtwSections),

              //Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(AppTexts.done)),
              ),
              const SizedBox(height: AppSize.spaceBtwItems),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(AppTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
