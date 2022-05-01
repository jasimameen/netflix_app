import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../core/colors/strings.dart';

import '../../../application/new_and_hot/new_and_hot_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/vertical_action_button_widget.dart';
import 'video_tumbnail_card_widget.dart';

class EveryOnesWatchingTabView extends StatelessWidget {
  const EveryOnesWatchingTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context
          .read<NewAndHotBloc>()
          .add(const NewAndHotEvent.loadDataInEveryOnesWatching());
    });

    return RefreshIndicator(
      onRefresh: () async => context
          .read<NewAndHotBloc>()
          .add(const NewAndHotEvent.loadDataInEveryOnesWatching()),
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          return ListView.builder(
            itemBuilder: (context, index) {
              final _data = state.everyOnesWatchingList[index];
              return _EveryOnesWatchingCard(
                image: imageAppendUrl + _data.backdropPath!,
                title: _data.name ?? _data.originalName ?? "Unnamed",
                overView: _data.overview,
              );
            },
            itemCount: state.everyOnesWatchingList.length,
          );
        },
      ),
    );
  }
}

/// EveryOnes Watching item Card used For [EveryOnesWatchingTabView]
class _EveryOnesWatchingCard extends StatelessWidget {
  final String image, title;
  final String? overView;
  const _EveryOnesWatchingCard({
    Key? key,
    required this.image,
    required this.title,
    required this.overView,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight,
          // Tumbnail Card
          VideoTumbnailCardWidget(
            image: image,
          ),

          // Video actionButtons (share, myList, Play)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              VerticalActionButtonWidget(
                label: 'Share',
                fontSize: 15,
                icon: CupertinoIcons.share,
                iconSize: 24,
                verticalGap: 4,
              ),
              VerticalActionButtonWidget(
                label: 'My List',
                fontSize: 15,
                icon: CupertinoIcons.add,
                iconSize: 30,
                verticalGap: 4,
              ),
              VerticalActionButtonWidget(
                label: 'Play',
                fontSize: 15,
                icon: CupertinoIcons.play_arrow_solid,
                iconSize: 30,
                verticalGap: 4,
              ),
            ],
          ),
          kHeight,

          // Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight5,

          // Overview
          Text(
            overView!,
            style: const TextStyle(
              color: kGreyColor,
              fontSize: 19,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 4,
          ),
        ],
      ),
    );
  }
}
