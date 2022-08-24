import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';

import '../../data/repository/search_movie_repository.dart';

class MovieSearchViewModel extends ChangeNotifier {
  final _searchRepositoy = SearchMovieRepository();
  final String search;
  List<AboutMovieModel> movieList = [];

  MovieSearchViewModel(this.search) {
    getSearchResult(search);
  }

  Future getSearchResult(String query) async {
    movieList = await _searchRepositoy.getSearchResult(query);
    notifyListeners();
  }
}
