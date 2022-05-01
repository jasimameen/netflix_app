import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../application/new_and_hot/new_and_hot_bloc.dart';
import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';
import '../../../core/colors/strings.dart';
import '../../widgets/vertical_action_button_widget.dart';
import '../screen_new_and_hot.dart';
import 'video_tumbnail_card_widget.dart';

/// First Tab in the [ScreenNewAndHot] Screen
class CommingSoonTabView extends StatelessWidget {
  const CommingSoonTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context
          .read<NewAndHotBloc>()
          .add(const NewAndHotEvent.loadDataInCommingSoon());
    });

    return RefreshIndicator(
      onRefresh: () async => context
          .read<NewAndHotBloc>()
          .add(const NewAndHotEvent.loadDataInCommingSoon()),
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
                child: CircularProgressIndicator(strokeWidth: 2));
          }
          if (state.isError) {
            return const Center(child: Text("Error Occured"));
          }
          if (state.commingSoonList.isEmpty) {
            return const Center(
                child: Text("No Data to Show \n Comming soon List is empty"));
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              final data = state.commingSoonList[index];
              return CommingSoonCard(
                key: const Key('commig_soon'),
                id: data.id.toString(),
                date: data.releaseDate!,
                backgroundImage: "$imageAppendUrl${data.backdropPath}",
                title: data.title ?? data.originalTitle ?? "Untitled",
                overView: data.overview ?? 'no Description',
              );
            },
            itemCount: state.commingSoonList.length,
          );
        },
      ),
    );
  }
}

/// CustomCard For [CommingSoonTabView]
class CommingSoonCard extends StatelessWidget {
  final String id;
  final String date;
  final String backgroundImage;
  final String title;
  final String overView;

  const CommingSoonCard(
      {Key? key,
      required this.id,
      required this.date,
      required this.backgroundImage,
      required this.title,
      required this.overView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 460,
      child: Row(
        children: [
          _DateSlider(date: date),
          _BuildShowCard(
            title: title,
            date: date,
            backgroundImage: backgroundImage,
            overView: overView,
          ),
        ],
      ),
    );
  }
}

class _DateSlider extends StatelessWidget {
  final String date;

  const _DateSlider({
    Key? key,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // formating Date
    final _date = DateTime.parse(date);
    final _month = DateFormat.MMM('en_US').format(_date); // eg: February = Feb

    final _tempDay = DateFormat.d('en_US').format(_date); // eg: 1,2,3..31
    final _day =
        _tempDay.length.isEven ? _tempDay : "0$_tempDay"; //eg: 01,02,03...31

    return SizedBox(
      height: double.maxFinite,
      width: 60,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: _month.toUpperCase(),
              style: const TextStyle(
                color: kGreyColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
            text: '\n' + _day,
            style: const TextStyle(
              color: kWhiteColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          )
        ]),
      ),
    );
  }
}

class _BuildShowCard extends StatelessWidget {
  const _BuildShowCard({
    Key? key,
    required this.title,
    required this.date,
    required this.backgroundImage,
    required this.overView,
  }) : super(key: key);

  final String title;
  final String date;
  final String backgroundImage;
  final String overView;

  @override
  Widget build(BuildContext context) {
    // ScreenSize
    final size = MediaQuery.of(context).size;
    // date
    final _date = DateTime.parse(date);
    final _dayOfWeek = DateFormat.EEEE('en_US').format(_date);

    return SizedBox(
      width: size.width - 60,
      height: double.maxFinite,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            VideoTumbnailCardWidget(
              image: backgroundImage,
            ),
            kHeight,
            _ShowCardTitleRow(title: title),
            Text(
              'Comming on $_dayOfWeek',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight,
            Container(
              width: 50,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    backgroundImage,
                  ),
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight5,
            Text(
              overView,
              style: const TextStyle(
                color: kGreyColor,
                fontSize: 19,
                overflow: TextOverflow.ellipsis,
              ),
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}

class _ShowCardTitleRow extends StatelessWidget {
  final String title;

  const _ShowCardTitleRow({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: Text(
            title.toUpperCase(),
            style: GoogleFonts.glassAntiqua(
              fontSize: 37,
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Expanded(
          flex: 3,
          child: FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VerticalActionButtonWidget(
                  label: 'Remind me',
                  fontSize: 15,
                  icon: CupertinoIcons.bell,
                  iconSize: 25,
                  verticalGap: 2,
                ),
                // kWidth5,
                VerticalActionButtonWidget(
                  label: 'Info',
                  fontSize: 15,
                  icon: CupertinoIcons.info,
                  iconSize: 25,
                  verticalGap: 5,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
