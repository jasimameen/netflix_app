import 'package:flutter/material.dart';

import '../../../core/colors/constants.dart';
import '../../widgets/content_heading_widget.dart';
import '../../widgets/image_card_vertical_widget.dart';


class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContentHeadingWidget(title: "Movies & TV"),
          kHeight20,
          Expanded(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.05 / 1.4,
              children: List.generate(
                10,
                (index) => const ImageCardVertical(imageUrl: kVerticalImage),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
