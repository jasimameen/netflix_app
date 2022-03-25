import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../downloads/widgets/screen_downloads.dart';
import '../../fast_laugh/screen_fast_laugh.dart';
import '../../home/screen_home.dart';
import 'bottom_nav.dart';
import '../../new_and_hot/screen_new_and_hot.dart';
import '../../seach/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({Key? key}) : super(key: key);

  final _pages = [
    const ScreenHome(), //0
    const ScreenNewAndHot(), //1
    const ScreenFastLaugh(), //2
    const ScreenSearch(), //3
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
