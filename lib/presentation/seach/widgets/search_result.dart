import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../application/search/search_bloc.dart';
import '../../../core/colors/strings.dart';

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
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }

                return GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.05 / 1.4,
                  children: List.generate(
                    state.searchResultList.length,
                    (index) {
                      final movie = state.searchResultList[index];
                      return ImageCardVertical(
                        onTap: () {},
                        imageUrl: movie.posterImageUrl,
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
