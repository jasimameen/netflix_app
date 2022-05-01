import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_project/application/video_details/video_details_bloc.dart';
import '../../core/colors/constants.dart';

import '../../application/home/home_bloc.dart';
import '../../core/colors/strings.dart';
import '../widgets/image_cards_section.dart';
import 'widgets/home_custom_app_bar.dart';
import 'widgets/home_main_dash_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getHomeScreendata());
    });
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              bool isLoading = false;

              showDetailsPage() => context
                  .read<VideoDetailsBloc>()
                  .add(VideoDetailsEvent.showDetailsPage(
                    context,
                    44,
                    state.movieList,
                  ));

              if (state.isLoading) {
                isLoading = true;
              }
              if (state.isError) {
                return const Center(
                  child: Text("Error While getting data"),
                );
              }

              // final state.movieList = state.movieList
              //     .map((e) => imageAppendUrl + e.posterPath)
              //     .toList();
              // final _tvShowPosterPathList = state.tvShowList
              //     .map((e) => imageAppendUrl + e.posterPath)
              //     .toList();

              final _mainDashImage = state
                  .movieList[Random().nextInt(
                state.movieList.length,
              )]
                  .posterPath;

              return SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    //
                    HomeScreenBgCard(
                      image: imageAppendUrl + _mainDashImage!,
                      isLoading: isLoading,
                    ),
                    //
                    ImageCardSection(
                      onTap: showDetailsPage,
                      title: "Released In the Past Year",
                      videoDataList: state.movieList,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      onTap: showDetailsPage,
                      title: "Trending Now",
                      videoDataList: state.movieList,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      onTap: showDetailsPage,
                      title: "Tens Drama",
                      videoDataList: state.movieList,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      onTap: showDetailsPage,
                      title: "Top 10 TV Shows Today",
                      videoDataList: state.tvShowList,
                      showNumbersWithCard: true,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      onTap: showDetailsPage,
                      title: "Hollywood Movies",
                      videoDataList: state.movieList,
                      isLoading: isLoading,
                    ),
                  ],
                ),
              );
            },
          ),
          const HomeCustomAppBar(),
        ],
      ),
    );
  }
}
