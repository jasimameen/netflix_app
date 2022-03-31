import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/search/search_bloc.dart';
import 'package:netflix_project/core/colors/strings.dart';

import '../../../core/colors/constants.dart';
import '../../widgets/content_heading_widget.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ContentHeadingWidget(title: "Top Searches"),
          kHeight,
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.isLoading == true) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state.isError) {
                  return const Center(child: Text("Error Occured"));
                } else if (state.idleList.isEmpty) {
                  return const Center(child: Text("List is Empty"));
                }
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final movie = state.idleList[index];
                    return TopSearchItemTile(
                      title: movie.title ?? movie.name ?? "No title available",
                      imageUrl: "$imageAppendUrl${movie.posterPath}",
                    );
                  },
                  separatorBuilder: (context, index) => kHeight20,
                  itemCount: state.idleList.length,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  const TopSearchItemTile({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        kWidth,
        Container(
          width: size.width * .35,
          height: size.width * .2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kWidth,
        Expanded(
            child: Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        )),
        const Icon(
          CupertinoIcons.play_circle,
          size: 35,
        ),
        kWidth,
      ],
    );
  }
}
