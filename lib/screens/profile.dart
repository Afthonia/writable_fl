import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/controllers/book_controller.dart';
import 'package:writable_fl/controllers/profile_controller.dart';
import 'package:writable_fl/models/user_dashboard_model.dart';
import 'package:writable_fl/screens/book_overview_screen.dart';
import 'package:writable_fl/screens/settings.dart';
import 'package:writable_fl/screens/story_design_screen.dart';
import 'package:writable_fl/screens/user_books_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';
import 'package:writable_fl/widgets/back_icon.dart';
import 'package:writable_fl/widgets/book_card.dart';
import 'package:writable_fl/widgets/box_textfield.dart';
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
        actions:
            ProfileController.to.uid == AuthController.to.currentUser.value!.id
                ? [
                    IconButton(
                      onPressed: () async => await AuthController.to.signOut(),
                      icon: Icon(
                        Icons.logout_rounded,
                        color: ThemeConstants.activeIconColor,
                      ),
                    ),
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
                  ]
                : null,
      ),
      body: ListView(
        children: [
          ProfileCard(
            dashboardModel: UserDashboardModel(
                name: AuthController.to.currentUser.value!.name,
                username: AuthController.to.currentUser.value!.username,
                email: AuthController.to.currentUser.value!.email,
                gender: AuthController.to.currentUser.value!.gender,
                inspiration: AuthController.to.currentUser.value!.inspiration,
                authorLevel: AuthController.to.currentUser.value!.authorLevel,
                authorTitle: AuthController.to.currentUser.value!.authorTitle,
                lastVisited: AuthController.to.currentUser.value!.lastVisited,
                createdAt: AuthController.to.currentUser.value!.createdAt),
          ),
          profController.uid == AuthController.to.currentUser.value?.id
              ? ActiveButton(
                  content: "Create A New Adventure!",
                  onTap: () => Get.dialog(
                    AlertDialog(
                      title: const Text("Create A New Project"),
                      backgroundColor: ThemeConstants.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(StyleConstants.smallRadius),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const BoxTextfield(hintText: "Book Title"),
                          const BoxTextfield(
                            hintText: "Description...",
                          ),
                          ActiveButton(
                              content: "Create",
                              onTap: () {
                                //TODO: Create The Story
                                Get.off(
                                  const StoryDesignScreen(),
                                );
                              })
                        ],
                      ),
                    ),
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
                itemCount: profController.readingList.value != null
                    ? profController.readingList.value!.length
                    : 1,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: StyleConstants.mediumPadding,
                    ),
                    child: profController.readingList.value != null
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
