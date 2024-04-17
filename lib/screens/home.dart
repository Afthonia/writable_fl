import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/profile.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "HOME",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          Get.to(const Profile());
        },
        icon: Icon(
          CupertinoIcons.profile_circled,
          color: ThemeConstants.activeIconColor,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
