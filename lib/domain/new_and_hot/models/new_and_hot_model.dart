import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class NewAndHotModel {
  final List<NewAndHotData> results;
  NewAndHotModel({
    required this.results,
  });

  NewAndHotModel copyWith({
    List<NewAndHotData>? results,
  }) {
    return NewAndHotModel(
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory NewAndHotModel.fromMap(Map<String, dynamic> map) {
    return NewAndHotModel(
      results: List<NewAndHotData>.from(
          map['results']?.map((x) => NewAndHotData.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory NewAndHotModel.fromJson(String source) =>
      NewAndHotModel.fromMap(json.decode(source));

  @override
  String toString() => 'NewAndHotModel(results: $results)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewAndHotModel && listEquals(other.results, results);
  }

  @override
  int get hashCode => results.hashCode;
}

class NewAndHotData {
  final int? id;

  @JsonKey(name: 'backdrop_path')
  final String backdropPath;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'release_date')
  final String releaseDate;

  @JsonKey(name: 'original_title')
  final String originalTitle;

  final String? title;

  final String? overview;

  NewAndHotData({
    required this.id,
    required this.backdropPath,
    required this.posterPath,
    required this.releaseDate,
    required this.originalTitle,
    required this.title,
    required this.overview,
  });

  NewAndHotData copyWith({
    int? id,
    String? backdropPath,
    String? posterPath,
    String? releaseDate,
    String? originalTitle,
    String? title,
    String? overview,
  }) {
    return NewAndHotData(
      id: id ?? this.id,
      backdropPath: backdropPath ?? this.backdropPath,
      posterPath: posterPath ?? this.posterPath,
      releaseDate: releaseDate ?? this.releaseDate,
      originalTitle: originalTitle ?? this.originalTitle,
      title: title ?? this.title,
      overview: overview ?? this.overview,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'backdrop_path': backdropPath,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'original_title': originalTitle,
      'title': title,
      'overview': overview,
    };
  }

  factory NewAndHotData.fromMap(Map<String, dynamic> map) {
    return NewAndHotData(
      id: map['id']?.toInt(),
      backdropPath: map['backdrop_path'] ?? '',
      posterPath: map['poster_path'] ?? '',
      releaseDate: map['release_date'] ?? '',
      originalTitle: map['original_title'] ?? '',
      title: map['title'],
      overview: map['overview'],
    );
  }

  String toJson() => json.encode(toMap());

  factory NewAndHotData.fromJson(String source) =>
      NewAndHotData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'NewAndHotData(id: $id, backdropPath: $backdropPath, posterPath: $posterPath, releaseDate: $releaseDate, originalTitle: $originalTitle, title: $title, overview: $overview)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is NewAndHotData &&
        other.id == id &&
        other.backdropPath == backdropPath &&
        other.posterPath == posterPath &&
        other.releaseDate == releaseDate &&
        other.originalTitle == originalTitle &&
        other.title == title &&
        other.overview == overview;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        backdropPath.hashCode ^
        posterPath.hashCode ^
        releaseDate.hashCode ^
        originalTitle.hashCode ^
        title.hashCode ^
        overview.hashCode;
  }
}
