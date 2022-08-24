import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/datasource/movie_api_impl.dart';
import 'package:flutter_about_movie_app/data/repository/movie_repository_impl.dart';

import '../../data/model/about_movie_model.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepositoryImpl(MovieApiImpl());
  List<AboutMovieModel> movieList = [];

  MovieViewModel() {
    getList();
    notifyListeners();
  }

  Future getList() async {
    movieList = await _movieRepository.getSearchResult();
    notifyListeners();
  }
}
