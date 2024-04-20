import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/edit_quote_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';
import 'package:writable_fl/utils/theme_constants.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => Get.to(const EditQuoteScreen()),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.passthrough,
        children: [
          Card(
            color: ThemeConstants.activeColor.withOpacity(0.7),
            margin: EdgeInsets.symmetric(
              vertical: StyleConstants.smallPadding,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(
                  StyleConstants.bigRadius,
                ),
                topRight: Radius.circular(
                  StyleConstants.bigRadius,
                ),
              ),
            ),
            child: const SizedBox(
              height: 100,
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                "icons/quote-up.svg",
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(
                "icons/quote-down.svg",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
