import 'package:flutter/cupertino.dart';
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
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => const TopSearchItemTile(),
              separatorBuilder: (context, index) => kHeight20,
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({Key? key}) : super(key: key);

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
            image: const DecorationImage(
              image: NetworkImage(kHorizontalImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        kWidth,
        const Expanded(
            child: Text(
          "Movie Name",
          style: TextStyle(
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
