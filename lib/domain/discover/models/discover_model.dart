import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'discover_model.g.dart';

@JsonSerializable()
class DiscoverResults {
  final List<DiscoverModel> results;
  DiscoverResults({
    required this.results,
  });

  DiscoverResults copyWith({
    List<DiscoverModel>? results,
  }) {
    return DiscoverResults(
      results: results ?? this.results,
    );
  }

  factory DiscoverResults.fromJson(Map<String, dynamic> json) =>
      _$DiscoverResultsFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoverResultsToJson(this);

  @override
  String toString() => 'DiscoverResults(results: $results)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DiscoverResults && listEquals(other.results, results);
  }

  @override
  int get hashCode => results.hashCode;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DiscoverModel {
  final int? id;

  // @JsonKey(name: 'backdrop_path')
  final String? backdropPath;

  // @JsonKey(name: 'poster_path')
  final String? posterPath;

  // @JsonKey(name: 'release_date')
  final String? releaseDate;

  //use [firstAirDate] insted of [releaseDate] for tvData
  // @JsonKey(name: 'first_air_date')
  final String? firstAirDate;

  // @JsonKey(name: 'original_title')
  final String? originalTitle;

  //use [originalName] insted of [originalTitle] for tvData
  // @JsonKey(name: 'original_name')
  final String? originalName;

  final String? title;

  final String? name; //use [name] insted of [title] for tvData

  final String? overview;

  final double? popularity;
  DiscoverModel({
    required this.id,
    required this.backdropPath,
    required this.posterPath,
    required this.releaseDate,
    required this.firstAirDate,
    required this.originalTitle,
    required this.originalName,
    required this.title,
    required this.name,
    required this.overview,
    required this.popularity,
  });

  factory DiscoverModel.fromJson(Map<String, dynamic> json) =>
      _$DiscoverModelFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoverModelToJson(this);

  DiscoverModel copyWith({
    int? id,
    String? backdropPath,
    String? posterPath,
    String? releaseDate,
    String? firstAirDate,
    String? originalTitle,
    String? originalName,
    String? title,
    String? name,
    String? overview,
    double? popularity,
  }) {
    return DiscoverModel(
      id: id ?? this.id,
      backdropPath: backdropPath ?? this.backdropPath,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      firstAirDate: firstAirDate ?? this.firstAirDate,
      originalTitle: originalTitle ?? this.originalTitle,
      originalName: originalName ?? this.originalName,
      title: title ?? this.title,
      name: name ?? this.name,
      overview: overview ?? this.overview,
      popularity: popularity ?? this.popularity,
    );
  }

  @override
  String toString() {
    return 'DiscoverModel(id: $id, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate, firstAirDate: $firstAirDate, originalTitle: $originalTitle, originalName: $originalName, title: $title, name: $name, overview: $overview, popularity: $popularity)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is DiscoverModel &&
        other.id == id &&
        other.backdropPath == backdropPath &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.firstAirDate == firstAirDate &&
        other.originalTitle == originalTitle &&
        other.originalName == originalName &&
        other.title == title &&
        other.name == name &&
        other.overview == overview &&
        other.popularity == popularity;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        backdropPath.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        firstAirDate.hashCode ^
        originalTitle.hashCode ^
        originalName.hashCode ^
        title.hashCode ^
        name.hashCode ^
        overview.hashCode ^
        popularity.hashCode;
  }
}
