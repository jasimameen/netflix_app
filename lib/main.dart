import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/main_page/widgets/screen_main_page.dart';

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
          primarySwatch: Colors.blue, backgroundColor: backgroundColor),
      home: ScreenMainPage(),
    );
  }
}
