import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/repository/movie_repository.dart';

import '../../data/datasource/movie_api.dart';
import '../../data/model/about_movie_model.dart';

class MovieViewModel extends ChangeNotifier {
  final _movieRepository = MovieRepository();
  List<AboutMovieModel> movieList = [];

  MovieViewModel() {
    getList();
    notifyListeners();
  }

  Future getList() async {
    movieList = await _movieRepository.getSearchResult();
    notifyListeners();
    movieList.forEach((element) {
      print(element);
    });
  }
}
