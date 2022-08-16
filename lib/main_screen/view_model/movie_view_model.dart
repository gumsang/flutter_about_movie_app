import 'package:flutter/material.dart';

import '../api/movie_list.dart';
import '../model/about_movie_model.dart';

class MovieViewModel extends ChangeNotifier {
  MovieViewModel() {
    getList();
  }
  final _movieApi = MovieApi();
  List<AboutMovieModel> movieList = [];
  AboutMovieModel movie = AboutMovieModel();

  Future getList() async {
    movieList = await _movieApi.getMovieList();
    notifyListeners();
  }

  String getPosterUrl(AboutMovieModel movie) {
    return 'https://image.tmdb.org/t/p/w500${movie.posterPath}';
  }

  String getMoviesName(AboutMovieModel movie) {
    return movie.title as String;
  }
}
