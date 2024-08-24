import 'package:clean_ease/common/styles/spacing_styles.dart';
import 'package:clean_ease/utils/constants/colors.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:clean_ease/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? AppImages.lightAppLogo : AppImages.darkAppLogo),
                  ),
                  Text(AppTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: AppSize.sm,
                  ),
                  Text(AppTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: AppSize.spaceBtwSections),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: AppTexts.email),
                      ),
                      const SizedBox(height: AppSize.spaceBtwInputFields),
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.password_check),
                            labelText: AppTexts.password,
                            suffixIcon: Icon(Iconsax.eye_slash)),
                      ),
                      const SizedBox(height: AppSize.spaceBtwInputFields / 2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Remember Me
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (value) {}),
                              const Text(AppTexts.rememberMe),
                            ],
                          ),

                          // Forget Password
                          TextButton(
                              onPressed: () {},
                              child: const Text(AppTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(height: AppSize.spaceBtwSections),

                      // Sign Button
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(AppTexts.signIn))),
                      const SizedBox(height: AppSize.spaceBtwItems),

                      // Create Account Button
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(AppTexts.createAccount))),
                      const SizedBox(height: AppSize.spaceBtwSections),
                    ],
                  ),
                ),
              ),

              // Dvider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(
                      color: dark ? AppColors.darkergrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
