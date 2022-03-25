import 'package:flutter/material.dart';
import '../../core/colors/constants.dart';
import 'widgets/home_main_dash_widget.dart';
import '../widgets/image_cards_section.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  final sections = const <Widget>[
    //
    HomeScreenBgCard(image: kHomeScreenImage),
    //
    ImageCardSection(title: "Released In the Past Year"),
    ImageCardSection(title: "Trending Now"),
    ImageCardSection(title: "Tens Drama"),
    ImageCardSection(title: "Top 10 TV Shows Today", showNumbersWithCard: true),
    ImageCardSection(title: "Hollywood Movies"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          // const HomeCustomAppBar(), FIXME: Error in This AppBar
        ],
        body: ListView(
          shrinkWrap: true,
          children: sections,
        ),
      ),
    );
  }
}
