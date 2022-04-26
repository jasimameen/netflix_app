import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../core/colors/constants.dart';
import 'video_tumbnail_card_widget.dart';
import '../../widgets/vertical_action_button_widget.dart';
import '../../../core/colors/colors.dart';

class EveryOnesWatchingTabView extends StatelessWidget {
  const EveryOnesWatchingTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const _EveryOnesWatchingCard(),
      itemCount: 2,
    );
  }
}

/// EveryOnes Watching item Card used For [EveryOnesWatchingTabView]
class _EveryOnesWatchingCard extends StatelessWidget {
  const _EveryOnesWatchingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           VideoTumbnailCardWidget(image: kHorizontalImage,),
          _buttonsRow(),
          kHeight,
          const Text(
            "Friends",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeight5,
          const Text(
            "Landing the lead in the school musical is a dream com true for Jodi, until the presure sends her confidence --- and her relationship -- into a tailspin",
            style: TextStyle(
              color: kGreyColor,
              fontSize: 19,
              overflow: TextOverflow.ellipsis,
            ),
            maxLines: 5,
          ),
          kHeight,
        ],
      ),
    );
  }

  Row _buttonsRow() => Row(
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
      );
}
