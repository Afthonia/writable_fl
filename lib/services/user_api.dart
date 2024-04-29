import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/models/user_model.dart';
import 'package:writable_fl/screens/root_wrapper.dart';

class UserApi {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore store = FirebaseFirestore.instance;

  static Future<bool> createUser(UserModel? user) async {
    try {
      await store.collection('users').doc(user?.id).set(user!.toMap());

      return true;
    } catch (err) {
      debugPrint("Create User Error: $err");
    }
    return false;
  }

  static Future<UserModel?> getUser(String uid) async {
    final userDoc = await store.collection('users').doc(uid).get();

    final user = userDoc.data();

    return UserModel.fromMap(user!);
  }

  static Future<bool> isUserExist(String? userId) async {
    try {
      final user = await store.collection('users').doc(userId).get();

      print("${user.exists}");

      return user.exists;
    } catch (e) {
      debugPrint("User Detecting Error: $e");
    }

    return false;
  }

  static Future<bool> deleteUser(String userId) async {
    try {
      await auth.currentUser?.delete();
      await store.collection('users').doc(userId).delete();

      return true;
    } on FirebaseAuthException catch (err) {
      if (err.code == "requires-recent-login") {
        AuthController.to.currentUser.value = null;
        Get.offAll(const RootWrapper());
        EasyLoading.showInfo("Log in is necessary!");
      }

      debugPrint("Firebase Auth Delete User Error: $err");
      debugPrint("Firebase Auth Delete User Error: ${err.code}");
    } catch (err) {
      debugPrint("Firebase Delete User Error: $err");
      debugPrint("Firebase Delete User Error: ${err.hashCode}");
    }

    return false;
  }
}
