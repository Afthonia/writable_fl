import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/controllers/register_controller.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/box_textfield.dart';
import 'package:writable_fl/widgets/normal_textfield.dart';

class EditProfileScreen extends GetView<RegisterController> {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: StyleConstants.bigPadding),
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
              ),
              const Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: NormalTextfield(
                          hintText: "Name",
                        )),
                        Expanded(
                            child: NormalTextfield(
                          hintText: "Surname",
                        )),
                      ],
                    ),
                    NormalTextfield(
                      hintText: "Username",
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                  child: NormalTextfield(
                hintText: "Gender",
              )),
              Expanded(
                  child: NormalTextfield(
                hintText: "Birthday",
              )),
            ],
          ),
          const BoxTextfield(
            hintText: "Add something about yourself...",
          ),
          const NormalTextfield(
            hintText: "Website / Blog Address",
          ),
          const BoxTextfield(
            hintText: "What genres do you like to write?",
          ),
          const Row(
            children: [
              Expanded(
                  child: NormalTextfield(
                hintText: "Favorite Author",
              )),
              Expanded(
                  child: NormalTextfield(
                hintText: "Favorite Book",
              )),
            ],
          ),
          const NormalTextfield(
            hintText: "Why do you write?",
          ),
          const NormalTextfield(
            hintText: "What type of writer are you?",
          ),
          const NormalTextfield(
            hintText: "What type do you write?",
          ),
          const NormalTextfield(
            hintText: "How do you write?",
          ),
          const NormalTextfield(
            hintText: "Where do you write?",
          ),
          const NormalTextfield(
            hintText: "When do you write?",
          ),
          const NormalTextfield(
            hintText: "Which device/tool do you use to write?",
          ),
          const NormalTextfield(
            hintText: "What are your hobbies?",
          ),
          ActiveButton(
              content: "Save Changes",
              onTap: () async => await AuthController.to.signIn(
                    "emailSignUp",
                    email: controller.emailController.text,
                    password: controller.passwordController.text,
                  ))
        ],
      ),
    );
  }
}
