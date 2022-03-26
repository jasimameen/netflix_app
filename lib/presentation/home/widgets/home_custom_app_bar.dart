import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          end: const Alignment(0.0, -1),
          begin: const Alignment(0.0, 0.4),
          colors: <Color>[
            kBlackColor,
            Colors.black12.withOpacity(0.0),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              kWidth20,
              Image.network(kNetflixLogo),
              const Spacer(),
              const Icon(Icons.cast),
              kWidth,
              const Icon(Icons.smart_display_rounded),
              kWidth,
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Tv Shows", style: kHomeAppbarTextStyle),
              Text("Movies", style: kHomeAppbarTextStyle),
              Text("Catogaries", style: kHomeAppbarTextStyle),
            ],
          ),
        ],
      ),
    );
  }
}
