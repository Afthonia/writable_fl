import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/fancy_title.dart';
import 'package:writable_fl/widgets/story_design_button.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIcon(),
        title: const FancyTitle(
          content: "Notes of Emma",
          fontSize: 23.0,
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => StoryDesignButton(
          onTap: () {},
          content: "Note",
        ),
      ),
      floatingActionButton: IconButton.filled(
        padding: EdgeInsets.all(StyleConstants.mediumPadding),
        style: IconButton.styleFrom(
          backgroundColor: ThemeConstants.activeColor,
        ),
        onPressed: () {},
        icon: const Icon(
          CupertinoIcons.add,
        ),
      ),
    );
  }
}
