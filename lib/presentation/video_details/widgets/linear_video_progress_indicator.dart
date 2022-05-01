import 'package:flutter/material.dart';
import '../../../core/colors/constants.dart';

class LinearVideoProgressIndicator extends StatelessWidget {
  final double? percentage;
  final Color? backgroundColor, valueColor;

  const LinearVideoProgressIndicator({
    Key? key,
    required this.percentage,
    this.backgroundColor,
    this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: LinearProgressIndicator(
            value: percentage! / 100,
            valueColor: AlwaysStoppedAnimation<Color>(
              valueColor ?? Colors.red,
            ),
            backgroundColor: backgroundColor ?? Colors.grey.shade700,
            minHeight: 3,
          ),
        ),
        kWidth,
        kWidth5,
        Text("${percentage!.toInt()}m remaining")
      ],
    );
  }
}
