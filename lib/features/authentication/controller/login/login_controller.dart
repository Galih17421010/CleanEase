import 'package:clean_ease/data/repositories/authentication/authentication_repository.dart';
import 'package:clean_ease/utils/constants/image_strings.dart';
import 'package:clean_ease/utils/helpers/network_manager.dart';
import 'package:clean_ease/utils/popups/full_screen_loader.dart';
import 'package:clean_ease/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL');
    password.text = localStorage.read('REMEMBER_ME_PASSWORD');
    super.onInit();
  }

  // Email and Password Login
  Future<void> emailAndPasswordSignIn() async {
    try {
      AppFullScreenLoader.openLoadingDialog(
          'Logging you in...', AppImages.darkAppLogo);
      // final isConnected = await NetworkManager.instance.isConnected();
      // if (!isConnected) {
      //   AppFullScreenLoader.stopLoading();
      //   return;
      // }

      if (!loginFormKey.currentState!.validate()) {
        AppFullScreenLoader.stopLoading();
        return;
      }

      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_EMAIL', password.text.trim());
      }

      // ignore: unused_local_variable
      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      AppFullScreenLoader.stopLoading();

      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      AppFullScreenLoader.stopLoading();
      AppLoaders.errorSnackBar(title: 'Oh Snap', message: e.toString());
    }
  }
}
