// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AboutMovieModel _$$_AboutMovieModelFromJson(Map<String, dynamic> json) =>
    _$_AboutMovieModel(
      id: json['id'] as int,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_AboutMovieModelToJson(_$_AboutMovieModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'title': instance.title,
    };
