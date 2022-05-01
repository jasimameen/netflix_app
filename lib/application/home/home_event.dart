part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getHomeScreendata() = _GetHomeScreendata;

  const factory HomeEvent.navigateToDetailsPage(BuildContext context) =
      _NavigateToDetailsPage;
}
