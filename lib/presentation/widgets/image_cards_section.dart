import 'package:flutter/material.dart';
import 'package:netflix_project/application/video_details/video_details_bloc.dart';
import 'package:netflix_project/core/colors/strings.dart';
import 'package:netflix_project/domain/discover/models/discover_model.dart';
import 'package:provider/src/provider.dart';

import '../../core/colors/constants.dart';
import '../home/widgets/image_card_with_numbr.dart';
import 'content_heading_widget.dart';
import 'image_card_vertical_widget.dart';

class ImageCardSection extends StatelessWidget {
  final void Function() onTap;
  final String title;
  final List<DiscoverModel> videoDataList;
  final bool showNumbersWithCard;
  final bool isLoading;
  const ImageCardSection({
    Key? key,
    required this.onTap,
    required this.title,
    required this.videoDataList,
    this.showNumbersWithCard = false,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    videoDataList.shuffle();

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          ContentHeadingWidget(title: title),
          kHeight,
          LimitedBox(
            maxHeight: 200,
            child: isLoading
                ? SizedBox(
                    height: 150,
                    child: Center(
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.grey[700],
                      ),
                    ),
                  )
                : ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: List.generate(
                      videoDataList.length,
                      (index) {
                        final _posterPath =
                            imageAppendUrl + videoDataList[index].posterPath!;

                        showDetails() {
                          context.read<VideoDetailsBloc>().add(
                                VideoDetailsEvent.showDetailsPage(
                                  context,
                                  videoDataList[index].id!,
                                  videoDataList,
                                ),
                              );
                        }

                        return showNumbersWithCard
                            ? ImageCardWithNumber(
                                onTap: showDetails,
                                imageUrl: _posterPath,
                                index: index + 1,
                                width: 140,
                              )
                            : ImageCardVertical(
                                onTap: showDetails,
                                imageUrl: _posterPath,
                                width: 140,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 5),
                              );
                      },
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
