import 'package:flutter/material.dart';

import '../../core/colors/colors.dart';
import '../../core/colors/constants.dart';

class CustomAppBarWidget extends StatelessWidget {
  final Widget? leading;
  final String label;
  final Widget? logo;
  final PreferredSizeWidget? bottom;
  const CustomAppBarWidget({
    Key? key,
    this.leading,
    this.label = "",
    this.logo,
    this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading,
      title: logo ??
          Text(
            label,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: kWhiteColor,
            ),
          ),
      actions: const [
        // kWidth,
        // Spacer(),
        Icon(
          Icons.cast,
          size: 30,
          color: kWhiteColor,
        ),
        kWidth,
        SizedBox(
          // height: 30,
          // width: 30,
          // color: Colors.blue,
          child: Icon(
            Icons.portrait_rounded,
            size: 35,
            color: kWhiteColor,
          ),
        ),
        kWidth,
        kWidth,
      ],
      bottom: bottom,
    );
  }
}
