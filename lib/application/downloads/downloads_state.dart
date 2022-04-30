part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required Option<Either<Failure, List<TrendingData> >> downloadsFailureOrSuccesOption,
    required List<TrendingData> downloads,
    required bool isLoading,
    required bool isError,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      downloadsFailureOrSuccesOption: None(),
      downloads: [],
      isLoading: true,
      isError: false,
    );
  }
}
