import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:netflix_project/core/colors/strings.dart';

class SearchResp {
  final List<SearchResultData> results;

  SearchResp({
    required this.results,
  });

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

  SearchResp copyWith({
    List<SearchResultData>? results,
  }) {
    return SearchResp(
      results: results ?? this.results,
    );
  }

  @override
  String toString() => 'SearchResp(results: $results)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is SearchResp && listEquals(other.results, results);
  }

  @override
  int get hashCode => results.hashCode;
}

class SearchResultData {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'poster_path')
  final String posterPath;

  @JsonKey(name: 'title')
  final String title;

  @JsonKey(name: 'name')
  final String name;

  SearchResultData({
    required this.id,
    required this.posterPath,
    required this.title,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'posterPath': posterPath,
      'title': title,
      'name': name,
    };
  }

  factory SearchResultData.fromMap(Map<String, dynamic> map) {
    return SearchResultData(
      id: map['id']?.toInt() ?? 0,
      posterPath: map['posterPath'] ?? '',
      title: map['title'] ?? '',
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchResultData.fromJson(String source) =>
      SearchResultData.fromMap(json.decode(source));

  SearchResultData copyWith({
    int? id,
    String? posterPath,
    String? title,
    String? name,
  }) {
    return SearchResultData(
      id: id ?? this.id,
      posterPath: posterPath ?? this.posterPath,
      title: title ?? this.title,
      name: name ?? this.name,
    );
  }

  @override
  String toString() {
    return 'SearchResultData(id: $id, posterPath: $posterPath, title: $title, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is SearchResultData &&
      other.id == id &&
      other.posterPath == posterPath &&
      other.title == title &&
      other.name == name;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      posterPath.hashCode ^
      title.hashCode ^
      name.hashCode;
  }
}
