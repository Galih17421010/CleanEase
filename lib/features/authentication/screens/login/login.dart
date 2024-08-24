import 'package:clean_ease/common/styles/spacing_styles.dart';
import 'package:clean_ease/common/widgets/login_signup/form_divider.dart';
import 'package:clean_ease/common/widgets/login_signup/social_buttons.dart';
import 'package:clean_ease/features/authentication/screens/login/widgets/login_form.dart';
import 'package:clean_ease/features/authentication/screens/login/widgets/login_header.dart';
import 'package:clean_ease/utils/constants/sizes.dart';
import 'package:clean_ease/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Header
              const AppLoginHeader(),

              // Form Login
              const AppLoginForm(),

              // Dvider
              AppFormDivider(dividerText: AppTexts.orSignInWith),
              const SizedBox(height: AppSize.spaceBtwSections),

              // Footer
              const AppSocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
