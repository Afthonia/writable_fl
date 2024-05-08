import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:writable_fl/controllers/auth_controller.dart';
import 'package:writable_fl/controllers/profile_controller.dart';
import 'package:writable_fl/models/user_dashboard_model.dart';
import 'package:writable_fl/screens/favorite_quotes_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/author_title_badge.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.dashboardModel});

  final UserDashboardModel dashboardModel;

  @override
  Widget build(BuildContext context) {
    return Card(
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
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: StyleConstants.bigPadding,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: CircleAvatar(
                        radius: 37.0,
                        backgroundColor: ThemeConstants.activeColor,
                        child: const CircleAvatar(
                          radius: 35.0,
                          backgroundImage: AssetImage("assets/profile.png"),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${dashboardModel.name} ${dashboardModel.surname ?? ''}",
                            style: TextStyle(
                              fontSize: StyleConstants.sectionTitleSize,
                            ),
                          ),
                          Text(
                            "@${dashboardModel.username}",
                            style: TextStyle(
                              fontSize: StyleConstants.mediumText,
                              color: ThemeConstants.fadingTextColor,
                            ),
                          ),
                          Wrap(
                            alignment: WrapAlignment.end,
                            children: [
                              Text(
                                dashboardModel.authorLevel,
                                style: TextStyle(
                                  color: ThemeConstants.almostFadingTextColor,
                                ),
                              ),
                              AuthorTitleBadge(
                                  title: dashboardModel.authorTitle),
                            ],
                          ),
                          ProfileController.to.uid ==
                                  AuthController.to.currentUser.value!.id
                              ? Text(
                                  "Joined us at ${DateFormat('y MMM').format(dashboardModel.createdAt)}",
                                  style: TextStyle(
                                    fontSize: StyleConstants.smallText,
                                    color: ThemeConstants.fadingTextColor,
                                  ),
                                )
                              : const SizedBox()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: StyleConstants.mediumPadding,
                  horizontal: StyleConstants.bigPadding,
                ),
                child: Divider(
                  color: ThemeConstants.activeIconColor,
                  thickness: 3.0,
                ),
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
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ProfileController.to.uid !=
                          AuthController.to.currentUser.value!.id
                      ? Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: StyleConstants.mediumPadding,
                              vertical: StyleConstants.bigPadding,
                            ),
                            child: FilledButton(
                              onPressed: () => Get.to(
                                const FavoriteQuotes(),
                              ),
                              style: FilledButton.styleFrom(
                                backgroundColor: ThemeConstants.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    StyleConstants.smallRadius,
                                  ),
                                ),
                              ),
                              child: Text(
                                "Writing Habits",
                                style: TextStyle(
                                  color: ThemeConstants.fadingTextColor,
                                  fontSize: StyleConstants.mediumText,
                                ),
                              ),
                            ),
                          ),
                        )
                      : const SizedBox(),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: StyleConstants.mediumPadding,
                        vertical: StyleConstants.bigPadding,
                      ),
                      child: FilledButton(
                        onPressed: () => Get.to(
                          const FavoriteQuotes(),
                        ),
                        style: FilledButton.styleFrom(
                          backgroundColor: ThemeConstants.primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              StyleConstants.smallRadius,
                            ),
                          ),
                        ),
                        child: Text(
                          "Favorite Quotes",
                          style: TextStyle(
                            color: ThemeConstants.fadingTextColor,
                            fontSize: StyleConstants.mediumText,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
