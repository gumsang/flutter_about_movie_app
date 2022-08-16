import 'package:flutter/material.dart';

import '../api/weather_api.dart';
import '../model/model.dart';

class MovieViewModel extends ChangeNotifier {
  MovieViewModel() {
    getList();
  }
  final _movieApi = MovieApi();
  List<AboutMovie> movieList = [];

  Future getList() async {
    movieList = await _movieApi.getMovieList();
    notifyListeners();
  }

  String getPosterUrl(AboutMovie movie) {
    return 'https://image.tmdb.org/t/p/w500${movie.posterPath}';
  }

  String getMoviesName(AboutMovie movie) {
    return movie.title as String;
  }
}
