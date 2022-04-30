part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String posterPath,
    required List<DiscoverModel> movieList,
    required List<DiscoverModel> tvShowList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
    posterPath: '',
        movieList: [],
        tvShowList: [],
        isLoading: false,
        isError: false,
      );
}
