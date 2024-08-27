import 'package:clean_ease/common/widgets/login_signup/form_divider.dart';
import 'package:clean_ease/common/widgets/login_signup/social_buttons.dart';
import 'package:clean_ease/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text
              Text(AppTexts.signUpTitle,
                  style: Theme.of(context).textTheme.headlineMedium),

              // Form
              const AppSignupForm(),
              const SizedBox(height: AppSize.spaceBtwSections),

              // Divider
              AppFormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),
              const SizedBox(height: AppSize.spaceBtwSections),

              // Social button
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
