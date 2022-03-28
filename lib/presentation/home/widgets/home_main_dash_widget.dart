import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart' show Colors, ElevatedButton;
import 'package:flutter/widgets.dart';

import '../../../core/colors/colors.dart';
import '../../widgets/vertical_action_button_widget.dart';

class HomeScreenBgCard extends StatelessWidget {
  final String image;
  const HomeScreenBgCard({
    Key? key,
    required this.image,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .70,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(image),
            ),
          ),
        ),
        //bottom grey shadow
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 70,
            width: double.infinity,
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
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // My List Button
              _customButton(icon: CupertinoIcons.add, label: "My List"),
              // play Button
              _playButton(),
              // Info AButton
              _customButton(icon: CupertinoIcons.info, label: "Info"),
            ],
          ),
        ),
      ],
    );
  }

  VerticalActionButtonWidget _customButton({icon, label}) {
    return VerticalActionButtonWidget(
      icon: icon,
      iconSize: 27,
      label: label,
      verticalGap: 5,
    );
  }

  ElevatedButton _playButton() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.play_arrow_solid,
        color: kBlackColor,
      ),
      label: const Text(
        "Play",
        style: TextStyle(
          color: kBlackColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
