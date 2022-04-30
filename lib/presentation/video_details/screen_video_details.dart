import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/presentation/video_details/widgets/video_details_suggetions_section.dart';
import 'package:netflix_project/presentation/widgets/vertical_action_button_widget.dart';

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
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 13),
                  child: const VideoTumbnailCardWidget(
                    image: kHorizontalImage,
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
                  children: const [
                    _HeaderSection(),
                    _ButtonsSection(),
                    _OverViewSection(),
                    _UserActionSection(),
                    DetailsPageSuggetions(),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Text(
          "Age of Samuria: Battle for Japan",
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
            const Text(
              "2020",
              style: TextStyle(
                color: kGreyColor,
                fontSize: 18,
              ),
            ),
            kWidth,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              color: kGreyColor.shade800,
              child: const Text("1B+"),
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
  const _OverViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Title
        kHeight,
        Text(
          "The Rise of Nobunga",
          style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        kHeight,

        // progressbar
        const LinearVideoProgressIndicator(
          percentage: 35,
        ),
        kHeight,

        // Overview
        Text(
          "The show revolves around Shannon, who must find ways to balance her professional life of protecting witnesses, her professional relationship with her partner and her problematic personal life.",
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
