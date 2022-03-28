import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/mute_button.dart';

class VideoTumbnailCardWidget extends StatelessWidget {
  const VideoTumbnailCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          decoration: const BoxDecoration(
              color: kGreyColor,
              image: DecorationImage(
                image: NetworkImage(kHorizontalImage),
                fit: BoxFit.cover,
              )),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: MuteButton(
            onPressed: () {},
            size: 22,
          ),
        ),
      ],
    );
  }
}
