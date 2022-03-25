import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/colors/colors.dart';
import 'presentation/main_page/widgets/screen_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Netflix',
      theme: ThemeData(
        primarySwatch: kWhiteMaterial,
        backgroundColor: backgroundColor,
        scaffoldBackgroundColor: backgroundColor,
        fontFamily: GoogleFonts.montserrat().fontFamily,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kWhiteColor),
          bodyText2: TextStyle(color: kWhiteColor),
        ),
        iconTheme: const IconThemeData(color: kWhiteColor),
      ),
      home: ScreenMainPage(),
    );
  }
}
