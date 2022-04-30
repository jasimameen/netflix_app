import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/colors.dart';
import 'package:netflix_project/core/colors/constants.dart';

class RectangularIconButtonwidget extends StatelessWidget {
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final String text;
  final TextStyle? textStyle;
  final IconData icon;
  final double? iconGap;
  final Color? iconColor;

  const RectangularIconButtonwidget({
    required this.onTap,
    this.padding,
    this.backgroundColor,
    this.borderRadius,
    required this.icon,
    this.iconColor,
    this.iconGap,
    required this.text,
    this.textStyle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding ?? const EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: backgroundColor ?? primaryColor,
            borderRadius: borderRadius ?? BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor ?? kBlackColor,
            ),
            SizedBox(width: iconGap ?? 0),
            Text(
              text,
              style: textStyle ??
                  const TextStyle(
                    color: kBlackColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
