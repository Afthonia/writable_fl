import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/user_books_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/book_card.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.chevron_back,
            color: ThemeConstants.activeIconColor,
          ),
        ),
      ),
      body: ListView(
        children: [
          Card(
            elevation: 0.0,
            color: ThemeConstants.secondaryColor.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                StyleConstants.smallRadius,
              ),
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: CircleAvatar(
                              radius: 37.0,
                              backgroundColor: ThemeConstants.activeColor,
                              child: const CircleAvatar(
                                radius: 35.0,
                                backgroundImage:
                                    AssetImage("assets/profile.png"),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Jane Austen"),
                                Text("@jane_austen"),
                                Row(
                                  children: [
                                    Text("Beginner"),
                                    Text("Crazy Romantic"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: ThemeConstants.activeIconColor,
                        thickness: 3.0,
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text("654"),
                                Text("Followers"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("463"),
                                Text("Following"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text("10"),
                                Text("Stories"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      FilledButton(
                        onPressed: () {},
                        child: const Text(
                          "Favorite Quotes",
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          FilledButton(
            onPressed: () {},
            child: const Text(
              "Create A New Adventure!",
            ),
          ),
          GestureDetector(
            onTap: () => Get.to(const UserBooksScreen()),
            child: Text(
              "My Books",
              style: TextStyle(
                color: ThemeConstants.activeTextColor,
              ),
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                BookCard(),
                BookCard(),
                BookCard(),
                BookCard(),
              ],
            ),
          ),
          Text(
            "My Reading List",
            style: TextStyle(
              color: ThemeConstants.activeTextColor,
            ),
          ),
          SizedBox(
            height: 180,
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: const [
                BookCard(),
                BookCard(),
                BookCard(),
                BookCard(),
                BookCard(),
                BookCard(),
                BookCard(),
                BookCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
