import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 120,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                kBlackColor,
                Colors.black12.withOpacity(0.50),
                Colors.black12.withOpacity(0.0),
              ],
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  kWidth20,
                  LimitedBox(
                      maxHeight: 55,
                      maxWidth: 55,
                      child: Image.network(
                        kNetflixLogo,
                        fit: BoxFit.contain,
                      )),
                  const Spacer(),
                  const Icon(Icons.cast),
                  kWidth,
                  const Icon(Icons.smart_display_rounded),
                  kWidth,
                ],
              ),
              kHeight,
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
        ),
      ],
    );
  }
}
