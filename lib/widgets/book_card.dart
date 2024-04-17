import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:writable_fl/screens/book_overview_screen.dart';
import 'package:writable_fl/utils/style_constants.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, this.height, this.width});

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(const BookOverviewScreen()),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            StyleConstants.smallRadius,
          ),
          clipBehavior: Clip.hardEdge,
          child: Image.asset(
            "assets/emma.png",
            height: height,
            width: width,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }
}
