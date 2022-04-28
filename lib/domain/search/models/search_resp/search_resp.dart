import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/colors/strings.dart';

class SearchResp {
  final List<SearchResultData> results;

  SearchResp({
    required this.results,
  });

  SearchResp copyWith({
    List<SearchResultData>? results,
  }) {
    return SearchResp(
      results: results ?? this.results,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'results': results.map((x) => x.toMap()).toList(),
    };
  }

  factory SearchResp.fromMap(Map<String, dynamic> map) {
    return SearchResp(
      results: List<SearchResultData>.from(
          map['results']?.map((x) => SearchResultData.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchResp.fromJson(String source) =>
      SearchResp.fromMap(json.decode(source));

  @override
  String toString() => 'SearchResp(results: $results)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SearchResp && listEquals(other.results, results);
  }

  @override
  int get hashCode => results.hashCode;
}

class SearchResultData {
  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'name')
  final String name;

  String get posterImageUrl => imageAppendUrl + posterPath;

  SearchResultData({
    required this.posterPath,
    required this.title,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'poster_path': posterPath,
      'title': title,
      'name': name,
    };
  }

  factory SearchResultData.fromMap(Map<String, dynamic> map) {
    return SearchResultData(
      posterPath: map['poster_path'] ?? '',
      title: map['title'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchResultData.fromJson(String source) =>
      SearchResultData.fromMap(json.decode(source));

  SearchResultData copyWith({
    String? posterPath,
    String? title,
    String? name,
  }) {
    return SearchResultData(
      posterPath: posterPath ?? this.posterPath,
      title: title ?? this.title,
      name: name ?? this.name,
    );
  }

  @override
  String toString() =>
      'SearchResultData(posterPath: $posterPath, title: $title, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SearchResultData &&
        other.posterPath == posterPath &&
        other.title == title &&
        other.name == name;
  }

  @override
  int get hashCode => posterPath.hashCode ^ title.hashCode ^ name.hashCode;
}
