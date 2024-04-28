import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/register_controller.dart';
import 'package:writable_fl/models/user_model.dart';
import 'package:writable_fl/services/user_api.dart';
//import 'package:writable_fl/widgets/verify_modal.dart';

class AuthController extends GetxController {
  static AuthController get to => Get.find();

  final auth = FirebaseAuth.instance;
  final store = FirebaseFirestore.instance;

  final user = Rxn<User>();
  final currentUser = Rxn<UserModel>();

  @override
  void onInit() {
    super.onInit();

    user.bindStream(auth.authStateChanges());

    ever(user, (User? userState) async {
      if (user.value == null) {
        currentUser.value = null;
        return;
      } else {
        currentUser.value = await UserApi.getUser(user.value!.uid);
      }
    });
  }

  Future<void> signIn(
    String platform, {
    String? email,
    String? password,
  }) async {
    switch (platform) {
      case "emailSignIn":
        await signInWithEmail(email!, password!);
        break;
      case "emailSignUp":
        await signUpWithEmail(email!, password!);
        break;
      default:
    }
  }

  Future<void> signInWithEmail(String email, String password) async {
    EasyLoading.show(maskType: EasyLoadingMaskType.clear);
    try {
      await auth.signInWithEmailAndPassword(email: email, password: password);
      // if (auth.currentUser!.emailVerified) {
      //   print("email is verified");
      // } else {
      //   final result = await Get.dialog(VerifyModal(user: auth.currentUser!));
      //   await signOut();

      //   if (result != null) {
      //     Get.showSnackbar(
      //       const GetSnackBar(
      //         message: "Verification link is sent again!",
      //       ),
      //     );
      //   }
      //   return;
      // }
    } on FirebaseAuthException catch (err) {
      if (err.code == 'channel-error') {
        EasyLoading.showError("Invalid email or password!");
      } else if (err.code == 'invalid-email') {
        EasyLoading.showError("Invalid email!");
      } else if (err.code == 'user-not-found') {
        EasyLoading.showError("Wrong email!");
        EasyLoading.dismiss();
      } else if (err.code == 'wrong-password') {
        EasyLoading.showError("Wrong password!");
      }
      print("firebase-auth-error: ${err.code}");
    } catch (err) {
      debugPrint("Email Sign In Error: $err");
    }
    EasyLoading.dismiss();
  }

  Future<void> signUpWithEmail(String email, String password) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      //await credential.user!.sendEmailVerification();

      final newUser = UserModel(
        id: credential.user!.uid,
        name: RegisterController.to.nameController.text,
        surname: RegisterController.to.surnameController.text,
        username: RegisterController.to.usernameController.text,
        gender: RegisterController.to.genderController.text,
        birthday: DateTime.now(),
        authorLevel: RegisterController.to.levelController.text,
        authorTitle: "Rookie",
        createdAt: DateTime.now(),
        lastVisited: DateTime.now(),
        inspiration: RegisterController.to.inspController.text,
        email: email,
        profileImage: user.value?.photoURL,
      );

      if (credential.user != null) {
        user.value = credential.user;
        final result = await UserApi.createUser(newUser);
        if (!result) {
          EasyLoading.showError("User creation failed!", duration: 1.seconds);
        } else {
          currentUser.value = newUser;
        }

        print(currentUser.value?.id);
      } else {
        print("user is null");
      }

      //await signOut();

      print("user is created");

      EasyLoading.showSuccess("Welcome!", duration: 1.seconds);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        EasyLoading.showError("The password is too weak!");
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        EasyLoading.showError("There is a user with the same email");
      } else if (e.code == 'channel-error') {
        print('Invalid Name, Email, Or Password!');
        EasyLoading.showError("Invalid name, email, or password!");
      }
      print(e.code);
      print("$e");
    } catch (e) {
      print(e);
    }
  }

  Future<void> signOut() async {
    EasyLoading.show(maskType: EasyLoadingMaskType.clear);
    try {
      await auth.signOut();
    } catch (err) {
      debugPrint("Sign Out Error: $err");
    }
  }

  Future<bool> deleteUser() async {
    try {
      final deleted = await UserApi.deleteUser(user.value!.uid);

      if (deleted) {
        await user.value!.delete();
        await auth.currentUser?.delete();

        //Get.offAll(const RootWrapper());
      }

      return true;
    } catch (err) {
      debugPrint("Delete User Error: $err");
    }

    return false;
  }
}
