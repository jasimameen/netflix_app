import 'package:flutter/material.dart';
import 'package:netflix_project/presentation/seach/widgets/search_result.dart';
import 'package:netflix_project/presentation/widgets/content_heading_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ContentHeadingWidget(title: "Released In the Past Year"),
        ],
      )
    );
  }
}
