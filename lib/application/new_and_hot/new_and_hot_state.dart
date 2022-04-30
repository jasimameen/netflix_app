part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required List<DiscoverModel> commingSoonList,
    required List<DiscoverModel> everyOnesWatchingList,
    required bool isLoading,
    required bool isError,
  }) = _NewAndHotState;

  factory NewAndHotState.intial() => const NewAndHotState(
        commingSoonList: [],
        everyOnesWatchingList: [],
        isLoading: false,
        isError: false,
      );
}
