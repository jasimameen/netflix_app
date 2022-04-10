import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class FastLaughVideoPlayer extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayer({
    Key? key,
    required this.videoUrl,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FastLaughVideoPlayer> createState() => _FastLaughVideoPlayerState();
}

class _FastLaughVideoPlayerState extends State<FastLaughVideoPlayer> {
  late VideoPlayerController controlller;

  @override
  void initState() {
    super.initState();
    controlller = VideoPlayerController.network(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {
          controlller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    controlller.initialize();
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: controlller.value.isInitialized
          ? AspectRatio(
              aspectRatio: controlller.value.aspectRatio,
              child: VideoPlayer(controlller))
          : const Center(
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
    );
  }

  @override
  void dispose() {
    controlller.dispose();
    super.dispose();
  }
}
