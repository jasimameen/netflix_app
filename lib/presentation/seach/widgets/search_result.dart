import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/constants.dart';
import 'package:netflix_project/presentation/widgets/content_heading_widget.dart';
import 'package:netflix_project/presentation/widgets/movie_card_vertical_widget.dart';


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
                (index) => const MovieCardVertical(imageUrl: kImageVertical),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
