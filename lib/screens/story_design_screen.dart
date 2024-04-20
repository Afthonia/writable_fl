import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/chapters_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/character_avatar.dart';
import 'package:writable_fl/widgets/fancy_title.dart';
import 'package:writable_fl/widgets/story_design_button.dart';

class StoryDesignScreen extends StatelessWidget {
  const StoryDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FancyTitle(
            content: "Emma Details",
            fontSize: StyleConstants.screenTitleSize,
          ),
          StoryDesignButton(
            content: "Chapters",
            onTap: () => Get.to(const ChaptersScreen()),
          ),
          const Text("Characters"),
          SizedBox(
            height: 150,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: const [
                CharacterAvatar(),
                CharacterAvatar(),
                CharacterAvatar(),
                CharacterAvatar(),
                CharacterAvatar(),
                CharacterAvatar(),
                CharacterAvatar(),
                CharacterAvatar(),
              ],
            ),
          ),
          StoryDesignButton(
            content: "Species",
            onTap: () {},
            icon: SvgPicture.asset(
              "icons/pet.svg",
              colorFilter: ColorFilter.mode(
                ThemeConstants.activeIconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          StoryDesignButton(
            content: "Items",
            onTap: () {},
            icon: SvgPicture.asset(
              "icons/broom.svg",
              colorFilter: ColorFilter.mode(
                ThemeConstants.activeIconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          StoryDesignButton(
            content: "Notes",
            onTap: () {},
            icon: SvgPicture.asset(
              "icons/note-text.svg",
              colorFilter: ColorFilter.mode(
                ThemeConstants.activeIconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
