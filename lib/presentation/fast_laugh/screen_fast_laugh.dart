import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/fast_laugh/fast_laugh_bloc.dart';
import 'widget/video_list_item.dart';

class ScreenFastLaugh extends StatelessWidget {
  const ScreenFastLaugh({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      context.read<FastLaughBloc>().add(const FastLaughEvent.initialize());
    });
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<FastLaughBloc, FastLaughState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 2));
            } else if (state.isError) {
              return const Center(child: Text("Error Occured"));
            } else if (state.videoList.isEmpty) {
              return const Center(child: Text("No Videos to Play"));
            }
            return PageView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => VideoListItemWidgetInherited(
                key: Key(index.toString()),
                widget: VideoListItemWidget(index: index),
                movieData: state.videoList[index],
              ),
              itemCount: state.videoList.length,
            );
          },
        ),
      ),
    );
  }
}
