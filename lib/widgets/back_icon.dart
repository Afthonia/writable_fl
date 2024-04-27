import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Get.back(),
      icon: Icon(
        CupertinoIcons.chevron_back,
        color: ThemeConstants.activeIconColor,
      ),
    );
  }
}
