import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/controllers/book_controller.dart';
import 'package:writable_fl/screens/book_overview_screen.dart';
import 'package:writable_fl/screens/profile.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/book_card.dart';
import 'package:writable_fl/widgets/fancy_title.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BookController());

    return Scaffold(
        appBar: AppBar(
          title: FancyTitle(
            content: "Home",
            fontSize: StyleConstants.screenTitleSize,
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(Profile(
                  uid: AuthController.to.currentUser.value!.id,
                ));
              },
              icon: Icon(
                CupertinoIcons.profile_circled,
                color: ThemeConstants.activeIconColor,
              ),
            ),
          ],
        ),
        body: controller.recentBooks.value != null
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: StyleConstants.bigPadding,
                  crossAxisCount: 2,
                ),
                itemCount: controller.recentBooks.value!.length,
                itemBuilder: (context, index) {
                  return BookCard(
                    onTap: () => Get.to(const BookOverviewScreen()),
                  );
                },
              )
            : Center(
                child: Text(
                  "No Books Published",
                  style: TextStyle(
                    color: ThemeConstants.activeTextColor,
                  ),
                ),
              ));
  }
}
