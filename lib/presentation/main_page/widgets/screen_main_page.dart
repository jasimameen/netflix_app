import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/main_page/widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child:  Text("Main Page"),
        ),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
