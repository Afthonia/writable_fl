import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:writable_fl/screens/login_screen.dart';
import 'package:writable_fl/utils/theme_constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: ThemeConstants.primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: ThemeConstants.primaryColor,
        ),
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: ThemeConstants.activeTextColor,
              fontFamily: GoogleFonts.inika().fontFamily,
            ),
      ),
      home: const LoginScreen(),
    );
  }
}
