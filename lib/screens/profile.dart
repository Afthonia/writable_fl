import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/controllers/book_controller.dart';
import 'package:writable_fl/controllers/profile_controller.dart';
import 'package:writable_fl/screens/book_overview_screen.dart';
import 'package:writable_fl/screens/settings.dart';
import 'package:writable_fl/screens/story_design_screen.dart';
import 'package:writable_fl/screens/user_books_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/book_card.dart';
import 'package:writable_fl/widgets/fancy_title.dart';
import 'package:writable_fl/widgets/no_book.dart';
import 'package:writable_fl/widgets/profile_card.dart';
import 'package:writable_fl/widgets/title_button.dart';

class Profile extends GetView<BookController> {
  const Profile({super.key, required this.uid});

  final String uid;

  @override
  Widget build(BuildContext context) {
    final profController = Get.put(ProfileController(uid: uid));

    return Scaffold(
      appBar: AppBar(
        title: FancyTitle(
          content: "Profile",
          fontSize: StyleConstants.screenTitleSize,
        ),
        leading: const BackIcon(),
        actions: [
          ProfileController.to.uid == AuthController.to.currentUser.value!.id
              ? IconButton(
                  onPressed: () async => await AuthController.to.signOut(),
                  icon: Icon(
                    Icons.logout_rounded,
                    color: ThemeConstants.activeIconColor,
                  ),
                )
              : const SizedBox(),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "icons/magicpen.svg",
              colorFilter: ColorFilter.mode(
                ThemeConstants.activeIconColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () => Get.to(const Settings()),
            icon: Icon(
              CupertinoIcons.settings_solid,
              color: ThemeConstants.activeIconColor,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const ProfileCard(),
          profController.uid == AuthController.to.currentUser.value?.id
              ? ActiveButton(
                  content: "Create A New Adventure!",
                  onTap: () => Get.to(
                    const StoryDesignScreen(),
                  ),
                )
              : const SizedBox(),
          TitleButton(
            content: "My Books",
            onTap: () => Get.to(
              const UserBooksScreen(),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 180,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  vertical: StyleConstants.smallPadding,
                ),
                itemCount: profController.books.value != null
                    ? profController.books.value!.length
                    : 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: StyleConstants.mediumPadding,
                    ),
                    child: profController.books.value != null
                        ? BookCard(
                            onLongPress: () =>
                                Get.to(const StoryDesignScreen()),
                            onTap: () => Get.to(const BookOverviewScreen()),
                          )
                        : const NoBook(content: "You have no book yet."),
                  );
                },
              ),
            ),
          ),
          TitleButton(
            content: "My Reading List",
            onTap: () => Get.to(
              const UserBooksScreen(),
            ),
          ),
          Obx(
            () => SizedBox(
              height: 180,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(
                  vertical: StyleConstants.smallPadding,
                ),
                itemCount: profController.books.value != null
                    ? profController.books.value!.length
                    : 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: StyleConstants.mediumPadding,
                    ),
                    child: profController.books.value != null
                        ? BookCard(
                            onTap: () => Get.to(const BookOverviewScreen()),
                          )
                        : const NoBook(content: "Your reading list is empty."),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
