import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart'
    show CircularProgressIndicator, Colors, MaterialPageRoute;
import 'package:flutter/widgets.dart';
import 'package:netflix_project/application/video_details/video_details_bloc.dart';
import 'package:netflix_project/core/colors/strings.dart';
import 'package:netflix_project/domain/discover/models/discover_model.dart';
import 'package:netflix_project/presentation/video_details/screen_video_details.dart';
import 'package:netflix_project/presentation/widgets/rectangular_icon_button_widget.dart';
import 'package:provider/src/provider.dart';

import '../../../core/colors/colors.dart';
import '../../widgets/vertical_action_button_widget.dart';

class HomeScreenBgCard extends StatelessWidget {
  final DiscoverModel videoData;
  final bool isLoading;
  const HomeScreenBgCard({
    Key? key,
    required this.videoData,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image = imageAppendUrl + videoData.posterPath!;

    return GestureDetector(
      onTap: () {
        context.read<VideoDetailsBloc>().add(
              VideoDetailsEvent.showDetailsPage(
                context,
                videoData.id!,
                [videoData],
              ),
            );
      },
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          isLoading
              ? SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .70,
                  child: const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 1.5,
                    ),
                  ),
                )
              : Container(
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
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  end: const Alignment(0.0, -1),
                  begin: const Alignment(0.0, 0.4),
                  colors: <Color>[
                    kBlackColor,
                    Colors.black12.withOpacity(0.50),
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
                VerticalActionButtonWidget(
                  icon: CupertinoIcons.add,
                  iconSize: 27,
                  label: "My List",
                  verticalGap: 5,
                ),
                // play Button
                RectangularIconButtonwidget(
                  onTap: () {},
                  text: "Play",
                  icon: CupertinoIcons.play_arrow_solid,
                ), // Info AButton
                VerticalActionButtonWidget(
                  icon: CupertinoIcons.info,
                  iconSize: 27,
                  label: "Info",
                  verticalGap: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
