// ignore_for_file: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_project/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_project/presentation/fast_laugh/widget/fast_laugh_video_player.dart';

import '../../../core/colors/strings.dart';
import '../../../domain/downloads/models/downloads.dart';
import '../../widgets/mute_button.dart';
import '../../widgets/vertical_action_button_widget.dart';

class VideoListItemWidgetInherited extends InheritedWidget {
  final Widget widget;
  final Downloads movieData;

  const VideoListItemWidgetInherited({
    Key? key,
    required this.widget,
    required this.movieData,
  }) : super(key: key, child: widget);

  @override
  bool updateShouldNotify(covariant VideoListItemWidgetInherited oldWidget) {
    return oldWidget.movieData != movieData;
  }

  static VideoListItemWidgetInherited? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType<VideoListItemWidgetInherited>();
}

class VideoListItemWidget extends StatelessWidget {
  final int index;
  const VideoListItemWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final posterPath =
        VideoListItemWidgetInherited.of(context)?.movieData.posterPath;
    final videoUrl = dummyVideoUrls[index % dummyVideoUrls.length];

    return Stack(
      children: [
        FastLaughVideoPlayer(
          videoUrl: videoUrl,
          onStateChanged: (isPlaying) {},
        ),
        // Container(
        //   color: Colors.accents[index % Colors.accents.length],
        // ),
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
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: posterPath != null
                          ? NetworkImage(
                              imageAppendUrl + posterPath,
                            )
                          : null,
                    ),
                    ValueListenableBuilder(
                      valueListenable: likedVideoidList,
                      builder: (BuildContext context, List<int> value, _) {
                        return value.contains(index)
                            ? VerticalActionButtonWidget(
                                onTap: () {
                                  likedVideoidList.value.remove(index);
                                  likedVideoidList.notifyListeners();
                                },
                                icon: CupertinoIcons.heart_fill,
                                iconColor: Colors.red,
                                label: "Liked",
                              )
                            : VerticalActionButtonWidget(
                                onTap: () {
                                  likedVideoidList.value.add(index);
                                  likedVideoidList.notifyListeners();
                                },
                                icon: CupertinoIcons.smiley,
                                label: "LOL",
                              );
                      },
                    ),
                    VerticalActionButtonWidget(
                      // onTap: , TODO : onTap
                      icon: CupertinoIcons.add_circled,
                      label: "My List",
                    ),
                    VerticalActionButtonWidget(
                      // onTap: , TODO : onTap
                      icon: CupertinoIcons.share,
                      label: "Share",
                    ),
                    VerticalActionButtonWidget(
                      // onTap: , TODO : onTap
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
