import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import '../../application/video_details/video_details_bloc.dart';
import '../../core/colors/strings.dart';
import 'widgets/suggetions_tab_section.dart';
import '../widgets/vertical_action_button_widget.dart';

import '../../core/colors/colors.dart';
import '../../core/colors/constants.dart';
import '../new_and_hot/widgets/video_tumbnail_card_widget.dart';
import '../widgets/custom_app_bar_widget.dart';
import '../widgets/rectangular_icon_button_widget.dart';
import 'widgets/linear_video_progress_indicator.dart';

class ScreenVideoDetails extends StatelessWidget {
  const ScreenVideoDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: CustomAppBarWidget(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(CupertinoIcons.back),
            color: kWhiteColor,
          ),
        ),
      ),
      body: BlocBuilder<VideoDetailsBloc, VideoDetailsState>(
        builder: (context, state) {
          final data = state.videoData;

          final title = data.title ?? data.name ?? data.originalTitle ?? data.originalName ?? "Untitled";

          final overView = data.overview ?? "No Description Available";

          final _date = data.firstAirDate ?? data.releaseDate ?? "2020";
          final year = DateFormat.y().format(
            DateTime.parse(_date),
          );
          final popularity = data.popularity.toString();
          final percentage = data.popularity!.remainder(100).toInt();

          return Column(
            children: [
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 13),
                    child: VideoTumbnailCardWidget(
                      image: imageAppendUrl + state.videoData.backdropPath!,
                      muteBtnRightMargin: 5,
                      muteBtnBottomMargin: 1,
                    ),
                  ),
                  Positioned(
                    left: 0,
                    bottom: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        "Preview",
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ListView(
                    children: [
                      _HeaderSection(
                        title: title,
                        year: year,
                        popularity: popularity,
                      ),
                      _ButtonsSection(),
                      _OverViewSection(
                        title: title,
                        overView: overView,
                        percentage: percentage,
                      ),
                      _UserActionSection(),
                      SuggetionsTabSection(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  final String title, year, popularity;

  const _HeaderSection({
    Key? key,
    required this.title,
    required this.year,
    required this.popularity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 40,
            fontWeight: FontWeight.w500,
          ),
        ),

        // video (year, interactions, season, quality)
        kHeight,
        Row(
          children: [
            Text(
              "New",
              style: GoogleFonts.montserrat(
                color: Colors.green,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            kWidth,
            Text(
              year,
              style: const TextStyle(
                color: kGreyColor,
                fontSize: 18,
              ),
            ),
            kWidth,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              color: kGreyColor.shade800,
              child: Text("${popularity[1]}B+"),
            ),
            kWidth,
            const Text(
              "1 Season",
              style: TextStyle(
                color: kGreyColor,
                fontSize: 18,
              ),
            ),
            kWidth,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: kGreyColor,
                ),
                borderRadius: BorderRadius.circular(2),
              ),
              child: const Text(
                "HD",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ButtonsSection extends StatelessWidget {
  const _ButtonsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        Text(
          "Watch Season 1 Now",
          style: GoogleFonts.montserrat(
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),

        // play and download buttons
        kHeight,
        RectangularIconButtonwidget(
          onTap: () {},
          padding: const EdgeInsets.symmetric(vertical: 9),
          text: "Resume",
          textStyle: GoogleFonts.montserrat(
            color: kBlackColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          icon: CupertinoIcons.play_fill,
          iconGap: 5,
        ),
        kHeight,
        RectangularIconButtonwidget(
          onTap: () {},
          padding: const EdgeInsets.symmetric(vertical: 9),
          backgroundColor: kGreyColor.shade800,
          text: "Download",
          textStyle: GoogleFonts.montserrat(
            color: kWhiteColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          icon: Icons.download,
          iconColor: kWhiteColor,
          iconGap: 5,
        ),
      ],
    );
  }
}

class _OverViewSection extends StatelessWidget {
  final String title, overView;
  final int percentage;
  const _OverViewSection({
    Key? key,
    required this.title,
    required this.overView,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        kHeight,
        Text(
          title,
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight,

        // progressbar
        LinearVideoProgressIndicator(
          percentage: percentage.toDouble(),
        ),
        kHeight,

        // Overview
        Text(
          overView,
          style: GoogleFonts.montserrat(
            color: kGreyColor,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 10,
        ),
      ],
    );
  }
}

class _UserActionSection extends StatelessWidget {
  const _UserActionSection({Key? key}) : super(key: key);

  static const double fontSize = 15;
  static const double iconSize = 26;
  static const double verticalGap = 3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        VerticalActionButtonWidget(
          onTap: null,
          label: "My List",
          fontSize: fontSize,
          fontColor: kGreyColor,
          icon: Icons.add,
          iconSize: iconSize,
          verticalGap: verticalGap,
        ),
        VerticalActionButtonWidget(
          onTap: null,
          label: "Rate",
          fontSize: fontSize,
          fontColor: kGreyColor,
          icon: CupertinoIcons.hand_thumbsup,
          iconSize: iconSize,
          verticalGap: verticalGap,
        ),
        VerticalActionButtonWidget(
          onTap: null,
          label: "Share",
          fontSize: fontSize,
          fontColor: kGreyColor,
          icon: Icons.send_rounded,
          iconSize: iconSize,
          verticalGap: verticalGap,
        ),
      ],
    );
  }
}
