part of 'downloads_bloc.dart';

@freezed
class DownloadsState with _$DownloadsState {
  const factory DownloadsState({
    required bool isLoading,
    required Option<Either<Failure, List<Downloads> >> downloadsFailureOrSuccesOption,
    required List<Downloads> downloads,
  }) = _DownloadsState;

  factory DownloadsState.initial() {
    return const DownloadsState(
      isLoading: true,
      downloadsFailureOrSuccesOption: None(),
      downloads: [],
    );
  }
}
