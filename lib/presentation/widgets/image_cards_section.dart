import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:video_player/video_player.dart';
import '../../core/colors/constants.dart';
import '../home/widgets/image_card_with_numbr.dart';
import 'content_heading_widget.dart';
import 'image_card_vertical_widget.dart';

class ImageCardSection extends StatelessWidget {
  final String title;
  final List<String> posterList;
  final bool showNumbersWithCard;
  final bool isLoading;
  const ImageCardSection({
    Key? key,
    required this.title,
    required this.posterList,
    this.showNumbersWithCard = false,
    required this.isLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    posterList.shuffle();

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
                      posterList.length,
                      (index) => showNumbersWithCard
                          ? ImageCardWithNumber(
                              imageUrl: posterList[index],
                              index: index + 1,
                              width: 140,
                            )
                          : ImageCardVertical(
                              imageUrl: posterList[index],
                              width: 140,
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                            ),
                    ),
                  ),
          )
        ],
      ),
    );
  }
}
