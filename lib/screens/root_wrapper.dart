import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/screens/home.dart';
import 'package:writable_fl/screens/login_screen.dart';

class RootWrapper extends GetView<AuthController> {
  const RootWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.currentUser.value != null
          ? const Home()
          : const LoginScreen(),
    );
  }
}
