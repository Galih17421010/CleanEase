import 'package:clean_ease/features/personalization/models/user_model.dart';
import 'package:clean_ease/utils/exceptions/firebase_exceptions.dart';
import 'package:clean_ease/utils/exceptions/format_exceptions.dart';
import 'package:clean_ease/utils/exceptions/platform_exceptions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  static UserRepository get instance => Get.find();

  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection("Users").doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw AppFirebaseException(e.code).message;
    } on FirebaseException catch (_) {
      throw const AppFormatException();
    } on PlatformException catch (e) {
      throw AppPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
