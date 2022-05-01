part of 'video_details_bloc.dart';

@freezed
class VideoDetailsEvent with _$VideoDetailsEvent {
  const factory VideoDetailsEvent.showDetailsPage(
    BuildContext context,
    int id,
    List<DiscoverModel> videoData,
  ) = _ShowDetailsPage;
}
