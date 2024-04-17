import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CharacterAvatar extends StatelessWidget {
  const CharacterAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipOval(
            child: Container(
              color: Colors.black,
              width: 70.0,
              height: 70.0,
              
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text("Emma"),
        ],
      ),
    );
  }
}
