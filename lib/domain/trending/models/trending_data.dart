import 'package:freezed_annotation/freezed_annotation.dart';

part 'trending_data.freezed.dart';
part 'trending_data.g.dart';

@freezed
class TrendingData with _$TrendingData {
  const factory TrendingData({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: 'name') String? name,
  }) = _Downloads;

  factory TrendingData.fromJson(Map<String, dynamic> json) =>
      _$TrendingDataFromJson(json);
}
