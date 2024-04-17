import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/story_design_screen.dart';
import 'package:writable_fl/widgets/book_card.dart';

class UserBooksScreen extends StatelessWidget {
  const UserBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onLongPress: () => Get.to(const StoryDesignScreen()),
            child: const BookCard(),
          );
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
