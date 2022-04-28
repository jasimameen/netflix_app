import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

              if (state.isLoading) {
                isLoading = true;
              }
              if (state.isError) {
                return const Center(
                  child: Text("Error While getting data"),
                );
              }

              final _moviePosterPathList = state.movieList
                  .map((e) => imageAppendUrl + e.posterPath)
                  .toList();
              final _tvShowPosterPathList = state.tvShowList
                  .map((e) => imageAppendUrl + e.posterPath)
                  .toList();

              final _mainDashImage = _moviePosterPathList[Random().nextInt(
                _moviePosterPathList.length,
              )];

              return SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    //
                    HomeScreenBgCard(
                      image: _mainDashImage,
                      isLoading: isLoading,
                    ),
                    //
                    ImageCardSection(
                      title: "Released In the Past Year",
                      posterList: _moviePosterPathList,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      title: "Trending Now",
                      posterList: _moviePosterPathList,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      title: "Tens Drama",
                      posterList: _moviePosterPathList,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      title: "Top 10 TV Shows Today",
                      posterList: _tvShowPosterPathList,
                      showNumbersWithCard: true,
                      isLoading: isLoading,
                    ),
                    ImageCardSection(
                      title: "Hollywood Movies",
                      posterList: _moviePosterPathList,
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
