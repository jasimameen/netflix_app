import 'package:flutter/material.dart';

import 'widgets/comming_soon.dart';
import 'widgets/everyones_watching.dart';
import 'widgets/new_and_hot_app_bar.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({Key? key}) : super(key: key);

  final tabs = const [
    CommingSoonTabView(),
    EveryOnesWatchingTabView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: newAndHotAppBar(),
        body: TabBarView(children: tabs),
      ),
    );
  }
}
