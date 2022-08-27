import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/datasource/movie_api_impl.dart';

import '../../data/model/about_movie_model.dart';
import '../../data/repository/movie_repository.dart';

class MovieViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;
  List<AboutMovieModel> movieList = [];

  MovieViewModel(this._movieRepository);

  Future getList() async {
    movieList = await _movieRepository.getResult();
    notifyListeners();
  }

  Future getSearchList(String query) async {
    movieList = await _movieRepository.getSearchResult(query);
    notifyListeners();
  }
}
