import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';

import '../datasource/movie_api.dart';

class MovieRepository {
  final MovieApi _api = MovieApi();

  Future<List<AboutMovieModel>> getSearchResult() async {
    List<AboutMovieModel> movieList = await _api.getMovieList();
    return movieList.where((element) => element.posterPath != null).map(
      (e) {
        final AboutMovieModel temp;
        String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
        temp = e.copyWith(posterPath: path);
        return temp;
      },
    ).toList();
  }
}
