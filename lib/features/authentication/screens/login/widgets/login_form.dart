import 'package:clean_ease/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:clean_ease/features/authentication/screens/signup/signup.dart';
import 'package:clean_ease/navigation_menu.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppSize.spaceBtwSections),
        child: Column(
          children: [
            // email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AppTexts.email),
            ),
            const SizedBox(height: AppSize.spaceBtwInputFields),

            // password
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
                    onPressed: () => Get.to(() => const ForgetPassword()),
                    child: const Text(AppTexts.forgetPassword)),
              ],
            ),
            const SizedBox(height: AppSize.spaceBtwSections),

            // Sign Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    child: const Text(AppTexts.signIn))),
            const SizedBox(height: AppSize.spaceBtwItems),

            // Create Account Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () => Get.to(() => const SignupScreen()),
                    child: const Text(AppTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
