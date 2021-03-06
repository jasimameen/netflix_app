import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/colors/colors.dart';

class VerticalActionButtonWidget extends StatelessWidget {
  // onTap
  void Function()? onTap;
  // Text Properties
  final String label;
  final double? fontSize;
  Color? fontColor;

  // Icon Properties
  final IconData icon;
  final double iconSize;
  final Color? iconColor;

  // other
  final double verticalGap;

  VerticalActionButtonWidget({
    Key? key,
    this.onTap,
    required this.label,
    this.fontSize = 16,
    this.fontColor,
    required this.icon,
    this.iconSize = 35,
    this.iconColor,
    this.verticalGap = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(
              icon,
              size: iconSize,
              color: iconColor,
            ),
            SizedBox(
              height: verticalGap,
            ),
            Text(
              label,
              style: GoogleFonts.montserrat(
                fontSize: fontSize,
                color: fontColor,
                shadows: const [
                  BoxShadow(
                    color: kBlackColor,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                  BoxShadow(
                    color: kBlackColor,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
