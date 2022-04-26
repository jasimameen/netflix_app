part of 'new_and_hot_bloc.dart';

@freezed
class NewAndHotEvent with _$NewAndHotEvent {
  const factory NewAndHotEvent.loadDataInCommingSoon() = _LoadDataInCommingSoon;
  const factory NewAndHotEvent.loadDataInEveryOnesWatching() =
      _LoadDataInEveryOnesWatching;
}
