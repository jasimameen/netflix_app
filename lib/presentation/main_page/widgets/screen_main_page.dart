import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflix_project/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_project/presentation/home/screen_home.dart';
import 'package:netflix_project/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_project/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_project/presentation/seach/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    ScreenHome(), //0
    ScreenNewAndHot(), //1
    ScreenFastLaugh(), //2
    ScreenSearch(), //3
    ScreenDownloads(), //4
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: indexChangeNotifier,
          builder: (context, int index, _) => _pages[index],
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
