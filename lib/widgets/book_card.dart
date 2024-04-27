import 'package:flutter/cupertino.dart';
import 'package:writable_fl/utils/style_constants.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, this.onTap, this.onLongPress});

  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  // final double width;
  // final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170.0,
      width: 110.0,
      child: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onTap,
              onLongPress: onLongPress,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  StyleConstants.smallRadius,
                ),
                child: Image.asset(
                  "assets/emma.png",
                  fit: BoxFit.fill,
                  height: 165.0,
                  width: 105.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
