import 'package:clean_ease/data/repositories/authentication/authentication_repository.dart';
import 'package:clean_ease/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/helpers/network_manager.dart';
import 'package:clean_ease/utils/popups/full_screen_loader.dart';
import 'package:clean_ease/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFromKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      AppFullScreenLoader.openLoadingDialog(
          'Processing your request...', AppImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      if (!forgetPasswordFromKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance
          .sendPasswordResetEmail(email.text.trim());

      AppFullScreenLoader.stopLoading();

      AppLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email link sent to reset your password'.tr);

      Get.to(() => ResetPasswordScreen(email: email.text.trim()));
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      AppFullScreenLoader.openLoadingDialog(
          'Processing your request...', AppImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      AppFullScreenLoader.stopLoading();

      AppLoaders.successSnackBar(
          title: 'Email Sent',
          message: 'Email link sent to reset your password'.tr);
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
