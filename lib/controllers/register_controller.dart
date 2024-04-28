import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  static RegisterController get to => Get.find();

  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final genderController = TextEditingController();
  final birthdayController = TextEditingController();
  final levelController = TextEditingController();
  final inspController = TextEditingController();


  final bioController = TextEditingController();
  final addressController = TextEditingController();
  final genresController = TextEditingController();
  final favAuthController = TextEditingController();
  final favBookController = TextEditingController();
  final whyWriteController = TextEditingController();
  final writerKindController = TextEditingController();
  final whatTypeWriteController = TextEditingController();
  final howWriteController = TextEditingController();
  final whereWriteController = TextEditingController();
  final whenWriteController = TextEditingController();
  final usedDeviceController = TextEditingController();
  final hobbiesController = TextEditingController();
}
