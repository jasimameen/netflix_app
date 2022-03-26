import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors/colors.dart';
import '../../widgets/image_card_vertical_widget.dart';
import 'bordered_text_widget.dart';

class ImageCardWithNumber extends StatelessWidget {
  final String imageUrl;
  final int index;
  final double width;

  const ImageCardWithNumber({
    Key? key,
    required this.imageUrl,
    required this.index,
    this.width = 140,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(width: 30),
            ImageCardVertical(
              imageUrl: imageUrl,
              width: width,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              borderRadius: BorderRadius.circular(8),
            ),
          ],
        ),
        //
        Positioned(
          left: -2,
          bottom: 0,
          child: BorderedText(
            strokeWidth: 4,
            strokeColor: kWhiteColor,
            child: Text(
              "$index",
              style: GoogleFonts.chango(
                fontSize: 90,
                color: kBlackColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
