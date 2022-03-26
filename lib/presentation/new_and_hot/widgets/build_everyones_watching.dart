import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';

class EveryOnesWatchingTabView extends StatelessWidget {
  const EveryOnesWatchingTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        width: 50,
        height: 100,
        color: kGreyColor,
        child: Center(
          child: Text("Everyones Watching"),
        ),
      ),
    ]);
  }
}
