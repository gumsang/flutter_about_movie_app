import 'package:flutter/material.dart';

import '../api/movie_list.dart';
import '../../component/model.dart';

class MovieViewModel extends ChangeNotifier {
  MovieViewModel() {
    getList();
  }
  final _movieApi = MovieApi();
  List<AboutMovie> movieList = [];
  AboutMovie movie = AboutMovie();

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
