import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/helpers/network_manager.dart';
import 'package:clean_ease/utils/popups/full_screen_loader.dart';
import 'package:clean_ease/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      // Loading
      AppFullScreenLoader.openLoadingDialog(
          'We are processing your information...', AppImages.docerAnimation);

      final isConnected = await NetworkManager.instance.isConnected();

      if (!isConnected) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      if (!signupFormKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      AppFullScreenLoader.stopLoading();
    }
  }
}
