import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/home/home_bloc.dart';
import '../../core/colors/strings.dart';
import '../widgets/image_cards_section.dart';
import 'widgets/home_main_dash_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<HomeBloc>().add(const HomeEvent.getHomeScreendata());
    });
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          // const HomeCustomAppBar(), FIXME: Error in This AppBar
        ],
        body: BlocBuilder<HomeBloc, HomeState>(
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

            return ListView(
              shrinkWrap: true,
              children: [
                //
                HomeScreenBgCard(image: _moviePosterPathList[4]),
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
            );
          },
        ),
      ),
    );
  }
}
