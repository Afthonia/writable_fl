import 'package:flutter/material.dart';
import 'package:writable_fl/utils/style_constants.dart';

class FancyTextField extends StatelessWidget {
  const FancyTextField({super.key, this.placeholder, this.controller});

  final String? placeholder;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: StyleConstants.smallPadding,
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Color(0xFFFFFFFF),
        ),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(
                StyleConstants.smallRadius,
              ),
            ),
          ),
          filled: true,
          fillColor: const Color(0xFF05080E).withOpacity(0.65),
          hintText: placeholder,
          hintStyle: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }
}
