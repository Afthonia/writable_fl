import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/fancy_title.dart';
import 'package:writable_fl/widgets/story_design_button.dart';

class ChaptersScreen extends StatelessWidget {
  const ChaptersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const FancyTitle(
          content: "Chapters of Emma",
          fontSize: 23.0,
          
        ),
        
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => StoryDesignButton(
          onTap: () {},
          content: "Meeting",
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
