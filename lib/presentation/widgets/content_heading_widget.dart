import 'package:flutter/material.dart';

class ContentHeadingWidget extends StatelessWidget {
  final String title;
  final double fontSize;
  const ContentHeadingWidget({
    Key? key,
    required this.title,
    this.fontSize = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
