//
// entry.dart
// appflix
// 
// Author: wess (me@wess.io)
// Created: 01/03/2022
// 
// Copywrite (c) 2022 Wess.io
//

import 'package:flutter/material.dart';

class Entry {
  final String id;
  final String name;
  final String? description;
  final String ageRestriction;
  final Duration durationMinutes;
  final String thumbnailImageId;
  final String genres;
  final String tags;
  final DateTime? netflixReleaseDate;
  final DateTime? releaseDate;
  final int trendingIndex;
  final bool isOriginal;
  final String cast;

  bool isEmpty() {
    if(id.isEmpty || name.isEmpty) {
      return true;
    }

    return false;
  }

  Entry({
    required this.id,
    required this.name,
    this.description,
    required this.ageRestriction,
    required this.durationMinutes,
    required this.thumbnailImageId,
    required this.genres,
    required this.tags,
    this.netflixReleaseDate,
    this.releaseDate,
    required this.trendingIndex,
    required this.isOriginal,
    required this.cast,
  });

  static Entry empty() {
    return Entry(
      id: '',
      name: '',
      description: '',
      ageRestriction: '',
      durationMinutes: Duration(minutes: -1),
      thumbnailImageId: '',
      genres: '',
      tags: '',
      trendingIndex: -1,
      isOriginal: false,
      cast: '',
    );
  }

  static Entry fromJson(Map<String, dynamic> data) {
    return Entry(
      id: data['\$id'],
      name: data['name'],
      description: data['description'],
      ageRestriction: data['ageRestriction'],
      durationMinutes: Duration(minutes: data['durationMinutes']),
      thumbnailImageId: data['thumbnailImageId'],
      genres: data['genres'],
      tags: data['tags'],
      netflixReleaseDate: data['netflixReleaseDate'] != null ? DateTime.parse(data['netflixReleaseDate']) : null,
      releaseDate: data['releaseDate'] != null ? DateTime.parse(data['releaseDate']) : null,
      trendingIndex: data['trendingIndex'],
      isOriginal: data['isOriginal'],
      cast: data['cast'],
    );
  }
}
