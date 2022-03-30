import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'video_tumbnail_card_widget.dart';

import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';
import '../../widgets/vertical_action_button_widget.dart';
import '../screen_new_and_hot.dart';

/// First Tab in the [ScreenNewAndHot] Screen
class CommingSoonTabView extends StatelessWidget {
  const CommingSoonTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const CommingSoonCard(),
      itemCount: 2,
    );
  }
}

/// CustomCard For [CommingSoonTabView]
class CommingSoonCard extends StatelessWidget {
  const CommingSoonCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: 460,
      child: Row(
        children: [
          _buildDateSlider(),
          _buildShowCard(size),
        ],
      ),
    );
  }

  SizedBox _buildDateSlider() {
    return SizedBox(
      height: double.maxFinite,
      width: 60,
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(children: [
          TextSpan(
              text: 'FEB',
              style: TextStyle(
                color: kGreyColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
            text: '\n21',
            style: TextStyle(
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

  SizedBox _buildShowCard(Size size) {
    return SizedBox(
      width: size.width - 60,
      height: double.maxFinite,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeight,
            const VideoTumbnailCardWidget(),
            kHeight,
            _showCardTitleRow(),
            const Text(
              'Comming on Friday',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            kHeight,
            Container(
              width: 50,
              height: 15,
              decoration: const BoxDecoration(
                color: Colors.purple,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    "https://fiverr-res.cloudinary.com/videos/t_main1,q_auto,f_auto/femh4l8p2fdc08vz8ok0/design-4k-neon-sign-logo-intro-animation-video.png",
                  ),
                ),
              ),
            ),
            const Text(
              "InPlainSight",
              style: TextStyle(
                fontSize: 24,
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
          ],
        ),
      ),
    );
  }

  Row _showCardTitleRow() {
    return Row(
      children: [
        Text(
          'INPLAIN SIGHT',
          style: GoogleFonts.glassAntiqua(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        VerticalActionButtonWidget(
          label: 'Remind me',
          fontSize: 15,
          icon: CupertinoIcons.bell,
          iconSize: 25,
          verticalGap: 2,
        ),
        kWidth5,
        VerticalActionButtonWidget(
          label: 'Info',
          fontSize: 15,
          icon: CupertinoIcons.info,
          iconSize: 25,
          verticalGap: 5,
        ),
      ],
    );
  }
}
