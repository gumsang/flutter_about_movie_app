import 'package:freezed_annotation/freezed_annotation.dart';

part 'about_movie_model.freezed.dart';

part 'about_movie_model.g.dart';

@freezed
class AboutMovieModel with _$AboutMovieModel {
  const factory AboutMovieModel(
      {required int id,
      required String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      required String title}) = _AboutMovieModel;

  factory AboutMovieModel.fromJson(Map<String, Object?> json) =>
      _$AboutMovieModelFromJson(json);
}
