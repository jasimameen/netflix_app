import 'package:flutter/material.dart';

class SearchTitleWidget extends StatelessWidget {
  final String title;
  const SearchTitleWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
