import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/mute_button.dart';
import '../../../core/colors/colors.dart';
import '../../widgets/vertical_action_button_widget.dart';

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
                MuteButton(
                  onPressed: () {},
                ),

                // Right Side
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1646036185415-c9285526b584?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                      ),
                    ),
                    VerticalActionButtonWidget(
                      icon: CupertinoIcons.smiley,
                      label: "LOL",
                    ),
                    VerticalActionButtonWidget(
                      icon: CupertinoIcons.add_circled,
                      label: "My List",
                    ),
                    VerticalActionButtonWidget(
                      icon: CupertinoIcons.share,
                      label: "Share",
                    ),
                    VerticalActionButtonWidget(
                      icon: CupertinoIcons.play_arrow_solid,
                      label: "Play",
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

