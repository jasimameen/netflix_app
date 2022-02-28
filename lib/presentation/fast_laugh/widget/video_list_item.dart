import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/colors/constants.dart';

class VideoListItemWidget extends StatelessWidget {
  final int index;
  const VideoListItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // left Side
                CircleAvatar(
                  backgroundColor: kBlackColor.withOpacity(.5),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.volume_off,
                      color: kWhiteColor,
                    ),
                  ),
                ),

                // Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage("https://source.unsplash.com/500x500"),
                    ),
                    FastLaughActionButtonWidget(
                      icon: CupertinoIcons.smiley,
                      title: "LOL",
                    ),
                    FastLaughActionButtonWidget(
                      icon: CupertinoIcons.add_circled,
                      title: "My List",
                    ),
                    FastLaughActionButtonWidget(
                      icon: CupertinoIcons.share,
                      title: "Share",
                    ),
                    FastLaughActionButtonWidget(
                      icon: CupertinoIcons.play_arrow_solid,
                      title: "Play",
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FastLaughActionButtonWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const FastLaughActionButtonWidget({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Icon(
            icon,
            size: 35,
          ),
          kHeight,
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              shadows: [
                BoxShadow(
                  color: kBlackColor,
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
                BoxShadow(
                  color: kBlackColor,
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
