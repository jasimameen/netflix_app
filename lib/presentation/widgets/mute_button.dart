import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/colors/colors.dart';

class MuteButton extends StatelessWidget {
  final void Function()? onPressed;
  final double? size;
  const MuteButton({
    Key? key,
    required this.onPressed,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: kBlackColor.withOpacity(.5),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          CupertinoIcons.volume_off,
          size: size,
          color: kWhiteColor,
        ),
      ),
    );
  }
}
