import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/di/injectable.dart';
import '../../domain/discover/models/discover_model.dart';
import '../../presentation/video_details/screen_video_details.dart';

part 'video_details_bloc.freezed.dart';
part 'video_details_event.dart';
part 'video_details_state.dart';

@injectable
class VideoDetailsBloc extends Bloc<VideoDetailsEvent, VideoDetailsState> {
  VideoDetailsBloc() : super(VideoDetailsState.initialState()) {
    on<_ShowDetailsPage>((event, emit) {
      Navigator.push(
          event.context,
          MaterialPageRoute(
            builder: (context) => ScreenVideoDetails(),
          ));

      final _dataIndex =
          event.videoData.indexWhere((element) => element.id == event.id);

      final _data = event.videoData[_dataIndex];

      log("Video Details Page Data ================> " + _data.toString());

      emit(state.copyWith(videoData: _data));
    });
  }
}
