import 'package:flutter/material.dart';

import '../../data/model/search_movie_model.dart';
import '../../data/repository/search_movie_repository.dart';

class MovieSearchViewModel extends ChangeNotifier {
  final _searchRepositoy = SearchMovieRepository();
  List<SearchMovie> movieList = [];

  Future getSearchResult(String query) async {
    movieList = await _searchRepositoy.getSearchResult(query);
    notifyListeners();
  }
}
