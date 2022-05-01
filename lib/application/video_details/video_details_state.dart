part of 'video_details_bloc.dart';

@freezed
class VideoDetailsState with _$VideoDetailsState {
  const factory VideoDetailsState({
    required DiscoverModel videoData,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory VideoDetailsState.initialState() => VideoDetailsState(
        videoData: DiscoverModel(
            id: null,
            backdropPath: null,
            posterPath: null,
            releaseDate: null,
            firstAirDate: null,
            originalTitle: null,
            originalName: null,
            title: null,
            name: null,
            overview: null,
            popularity: null),
        isLoading: false,
        isError: false,
      );
}
