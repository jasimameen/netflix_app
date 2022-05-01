import 'package:flutter/material.dart';
import '../../../core/colors/colors.dart';
import '../../../core/colors/constants.dart';

class SuggetionCard extends StatelessWidget {
  const SuggetionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: LimitedBox(
        maxHeight: 50,
        maxWidth: 50,
        child: Image.network(
          kHorizontalImage,
          // fit: BoxFit.cover,
          // width: size.width * .30,
          // height: size.width * .18,
          color: kGreyColor,
        ),
      ),
    );
  }
}
