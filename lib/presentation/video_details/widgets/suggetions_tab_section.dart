import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/presentation/video_details/widgets/suggetion_card.dart';

class SuggetionsTabSection extends StatelessWidget {
  const SuggetionsTabSection({Key? key}) : super(key: key);

  final tabs = const [
    SuggetionCard(),
    SuggetionCard(),
    SuggetionCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(text: "EPISODES"),
              Tab(text: "TRAILERS AND MORE"),
              Tab(text: "MORE RATED"),
            ],
            isScrollable: true,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.red, width: 3.5),
              insets: EdgeInsets.only(bottom: 40),
            ),
            labelColor: kWhiteColor,
          ),
          // SizedBox(
          //   height: 1000,
          //   child: TabBarView(
          //     children: tabs,
          //   ),
          // )

          Padding(
            padding: const EdgeInsets.all(50),
            child: SizedBox(
              height: 200,
              child: Center(
                child: Text("Error With page view  LetMe fix it later"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
