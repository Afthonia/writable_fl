import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/help_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/fancy_title.dart';
import 'package:writable_fl/widgets/story_design_button.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
        title: FancyTitle(
          content: "Settings",
          fontSize: StyleConstants.screenTitleSize,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          StoryDesignButton(
            onTap: () => Get.to(const HelpScreen()),
            content: "Help",
            contentSize: StyleConstants.largeText,
            contentWeight: FontWeight.bold,
            icon: Icon(
              CupertinoIcons.question_circle,
              color: ThemeConstants.activeIconColor,
            ),
          ),
        ],
      ),
    );
  }
}
