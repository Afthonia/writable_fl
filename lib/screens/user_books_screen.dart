import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/controllers/profile_controller.dart';
import 'package:writable_fl/screens/book_overview_screen.dart';
import 'package:writable_fl/screens/story_design_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/book_card.dart';
import 'package:writable_fl/widgets/fancy_title.dart';

class UserBooksScreen extends StatelessWidget {
  const UserBooksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FancyTitle(
          content: ProfileController.to.uid == AuthController.to.currentUser.value?.id ? "My Books" : "Published Books",
          fontSize: StyleConstants.screenTitleSize,
        ),
        leading: const BackIcon(),
      ),
      body: Obx(() => ProfileController.to.books.value != null
          ? Padding(
              padding: EdgeInsets.symmetric(
                horizontal: StyleConstants.bigPadding,
              ),
              child: GridView.builder(
                itemCount: ProfileController.to.books.value!.length,
                itemBuilder: (context, index) {
                  return BookCard(
                    onLongPress: () => Get.to(const StoryDesignScreen()),
                    onTap: () => Get.to(const BookOverviewScreen()),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: StyleConstants.bigPadding,
                  crossAxisCount: 2,
                ),
              ),
            )
          : Center(
              child: Text(
                "No Book Yet",
                style: TextStyle(
                  color: ThemeConstants.activeTextColor,
                ),
              ),
            )),
    );
  }
}
