import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/mute_button.dart';

class VideoTumbnailCardWidget extends StatelessWidget {
  final String image;
  final double? muteBtnRightMargin;
  final double? muteBtnBottomMargin;

  const VideoTumbnailCardWidget({
    Key? key,
    required this.image,
    this.muteBtnRightMargin,
    this.muteBtnBottomMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 230,
          width: double.maxFinite,
          decoration: BoxDecoration(
              color: Colors.grey[850], borderRadius: BorderRadius.circular(5)),
          child: Image.network(
            image,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              return loadingProgress != null
                  ? const Center(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : child;
            },
            errorBuilder: (context, error, stackTrace) => const Center(
                child: Icon(CupertinoIcons.wifi_exclamationmark, size: 30)),
          ),
          clipBehavior: Clip.hardEdge,
        ),
        Positioned(
          right: muteBtnRightMargin ?? 10,
          bottom: muteBtnBottomMargin ?? 10,
          child: MuteButton(
            onPressed: () {},
            size: 22,
          ),
        ),
      ],
    );
  }
}
