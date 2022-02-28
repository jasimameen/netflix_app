import 'package:flutter/material.dart';
import 'package:netflix_project/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  final String title;
  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth,
        Text(
          title,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.cast,
          size: 30,
        ),
        kWidth,
        Container(
          // height: 30,
          // width: 30,
          // color: Colors.blue,
          child: const Icon(
            Icons.portrait_rounded,
            size: 35,
          ),
        ),
        kWidth,
        kWidth,
      ],
    );
  }
}
