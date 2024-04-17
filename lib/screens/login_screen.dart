import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/login_controller.dart';
import 'package:writable_fl/screens/home.dart';
import 'package:writable_fl/screens/register_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/fancy_textfield.dart';
import 'package:writable_fl/widgets/fancy_title.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF1B1724),
          image: DecorationImage(
            image: AssetImage("assets/login.png"),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(
                color: const Color(0xFF463C5D).withOpacity(0.5),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(StyleConstants.bigRadius),
                  bottom: Radius.circular(
                    StyleConstants.smallRadius,
                  ),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: StyleConstants.bigPadding,
                ),
                child: ListView(
                  children: [
                    const FancyTitle(
                      content: "WELCOME BACK",
                    ),
                    FancyTextField(
                      controller: controller.emailController,
                      placeholder: "Email",
                    ),
                    FancyTextField(
                      controller: controller.passwordController,
                      placeholder: "Password",
                    ),
                    ActiveButton(
                      content: "Login",
                      onTap: () => Get.to(const Home()),
                      hPad: 80.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "You're not one of us?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.to(const RegisterScreen()),
                          child: Text(
                            "Join now!",
                            style: TextStyle(
                              color: ThemeConstants.activeColor,
                              decoration: TextDecoration.underline,
                              decorationColor: ThemeConstants.activeColor,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
