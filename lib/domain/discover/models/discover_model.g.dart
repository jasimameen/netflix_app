// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverResults _$DiscoverResultsFromJson(Map<String, dynamic> json) =>
    DiscoverResults(
      results: (json['results'] as List<dynamic>)
          .map((e) => DiscoverModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscoverResultsToJson(DiscoverResults instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

DiscoverModel _$DiscoverModelFromJson(Map<String, dynamic> json) =>
    DiscoverModel(
      id: json['id'] as int?,
      backdropPath: json['backdrop_path'] as String?,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      originalTitle: json['original_title'] as String?,
      originalName: json['original_name'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DiscoverModelToJson(DiscoverModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'backdrop_path': instance.backdropPath,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'first_air_date': instance.firstAirDate,
      'original_title': instance.originalTitle,
      'original_name': instance.originalName,
      'title': instance.title,
      'name': instance.name,
      'overview': instance.overview,
      'popularity': instance.popularity,
    };
