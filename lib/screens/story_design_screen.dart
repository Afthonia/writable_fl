import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/chapters_screen.dart';
import 'package:writable_fl/screens/items_screen.dart';
import 'package:writable_fl/screens/notes_screen.dart';
import 'package:writable_fl/screens/species_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/character_avatar.dart';
import 'package:writable_fl/widgets/fancy_title.dart';
import 'package:writable_fl/widgets/story_design_button.dart';

class StoryDesignScreen extends StatelessWidget {
  const StoryDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
        title: FancyTitle(
          content: "Emma Details",
          fontSize: StyleConstants.screenTitleSize,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          StoryDesignButton(
            content: "Chapters",
            onTap: () => Get.to(
              const ChaptersScreen(),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: StyleConstants.bigPadding,
              bottom: StyleConstants.bigPadding,
              top: StyleConstants.mediumPadding,
            ),
            child: Text(
              "Characters",
              style: TextStyle(
                fontSize: StyleConstants.sectionTitleSize,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: StyleConstants.bigPadding,
            ),
            child: SizedBox(
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
          ),
          StoryDesignButton(
            content: "Species",
            onTap: () => Get.to(
              const SpeciesScreen(),
            ),
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
            onTap: () => Get.to(
              const ItemsScreen(),
            ),
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
            onTap: () => Get.to(
              const NotesScreen(),
            ),
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
