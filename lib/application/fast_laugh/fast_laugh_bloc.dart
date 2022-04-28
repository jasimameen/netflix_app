import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/downloads/i_downloads_repo.dart';
import '../../domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final dummyVideoUrls = [
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4",
  "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
];

ValueNotifier<List<int>> likedVideoidList = ValueNotifier([]);

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    IDownloadsRepo _downloadsRepo,
  ) : super(FastLaughState.initial()) {
    on<_Initialize>((event, emit) async {
      // intial state -> loading
      emit(state.copyWith(
        videoList: [],
        isLoading: true,
        isError: false,
      ));

      // get trending movies
      final _result = await _downloadsRepo.getDownloadsImage();
      final _state = _result.fold(
          (failure) => const FastLaughState(
                videoList: [],
                isLoading: false,
                isError: true,
              ),
          (response) => FastLaughState(
                videoList: response,
                isLoading: false,
                isError: false,
              ));

      // send to UI
      emit(_state);
    });

  }
}
