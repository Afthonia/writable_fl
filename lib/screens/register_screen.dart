import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/register_controller.dart';
import 'package:writable_fl/screens/edit_profile_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/fancy_textfield.dart';
import 'package:writable_fl/widgets/fancy_title.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/register.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(StyleConstants.smallPadding),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF302941).withOpacity(0.45),
              borderRadius: BorderRadius.circular(StyleConstants.bigRadius),
            ),
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: StyleConstants.smallPadding),
              child: ListView(
                children: [
                  const FancyTitle(content: "JOIN US IN THIS ADVENTURE!"),
                  Row(
                    children: [
                      Expanded(
                        child: FancyTextField(
                          controller: controller.nameController,
                          placeholder: "Name",
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: FancyTextField(
                          controller: controller.surnameController,
                          placeholder: "Surname",
                        ),
                      ),
                    ],
                  ),
                  FancyTextField(
                    controller: controller.usernameController,
                    placeholder: "Username",
                  ),
                  FancyTextField(
                    controller: controller.emailController,
                    placeholder: "Email",
                  ),
                  FancyTextField(
                    controller: controller.passwordController,
                    placeholder: "Password",
                  ),
                  FancyTextField(
                    controller: controller.confirmPasswordController,
                    placeholder: "Confirm Password",
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: FancyTextField(
                          controller: controller.genderController,
                          placeholder: "Gender",
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        child: FancyTextField(
                          controller: controller.birthdayController,
                          placeholder: "Birthday",
                        ),
                      ),
                    ],
                  ),
                  ActiveButton(content: "Register", onTap: () => Get.to(const EditProfileScreen()), hPad: 80.0,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
