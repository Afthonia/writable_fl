import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyModal extends StatelessWidget {
  final User user;
  const VerifyModal({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      title: const Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            flex: 2,
            child: Column(
              children: [
                Text(
                  'Email Verification',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 32),
                Text(
                  "You didn't verify your email yet!",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text(
                  "Resend",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  try {
                    await user.sendEmailVerification();
                    Get.back(result: true);
                  } on FirebaseAuthException catch (err) {
                    Get.back();
                    debugPrint("Firebase Verification Error: $err");
                  } catch (err) {
                    Get.back();
                    debugPrint("Verification Error: $err");
                  }
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
                onPressed: Get.back,
                child: const Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    ) /*.animate().fadeIn(duration: 500.ms)*/;
  }
}
