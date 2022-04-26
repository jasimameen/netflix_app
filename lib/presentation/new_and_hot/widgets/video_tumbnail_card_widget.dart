import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';
import '../../widgets/mute_button.dart';

class VideoTumbnailCardWidget extends StatelessWidget {
  final String image;

  const VideoTumbnailCardWidget({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log("this is the image path => " + image);
    return Stack(
      children: [
        Container(
          height: 230,
          decoration: BoxDecoration(
              color: kGreyColor,
              image: DecorationImage(
                image: NetworkImage(image),
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
