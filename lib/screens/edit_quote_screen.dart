import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:writable_fl/widgets/active_button.dart';

class EditQuoteScreen extends StatelessWidget {
  const EditQuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              textAlign: TextAlign.center,
              maxLines: null,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(
                  StyleConstants.bigPadding*2,
                ),
                hintText: "Edit your quote...",
                hintStyle: TextStyle(
                  color: ThemeConstants.activeColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      StyleConstants.bigRadius,
                    ),
                    topRight: Radius.circular(
                      StyleConstants.bigRadius,
                    ),
                  ),
                  borderSide: BorderSide(
                    color: ThemeConstants.activeColor,
                    width: 2.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      StyleConstants.bigRadius,
                    ),
                    topRight: Radius.circular(
                      StyleConstants.bigRadius,
                    ),
                  ),
                  borderSide: BorderSide(
                    color: ThemeConstants.activeColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            ActiveButton(
              content: "Save",
              onTap: () => Get.back(),
            ),
          ],
        ),
      ),
    );
  }
}
