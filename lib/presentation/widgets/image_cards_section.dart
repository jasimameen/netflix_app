import 'package:flutter/material.dart';
import '../../core/colors/constants.dart';
import '../home/widgets/image_card_with_numbr.dart';
import 'content_heading_widget.dart';
import 'image_card_vertical_widget.dart';

class ImageCardSection extends StatelessWidget {
  final String title;
  final bool showNumbersWithCard;
  const ImageCardSection({
    Key? key,
    required this.title,
    this.showNumbersWithCard = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => showNumbersWithCard
                    ? ImageCardWithNumber(
                        imageUrl: kVerticalImage,
                        index: index + 1,
                        width: 140,
                      )
                    : const ImageCardVertical(
                        imageUrl: kVerticalImage,
                        width: 140,
                        margin: EdgeInsets.symmetric(horizontal: 5),
                      ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
