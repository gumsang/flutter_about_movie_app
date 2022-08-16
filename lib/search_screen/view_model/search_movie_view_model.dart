import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/search_screen/model/search_movie_model.dart';

import '../../main_screen/api/movie_list.dart';

class SearchViewModel extends ChangeNotifier {
  final _movieApi = MovieApi();
  List<SearchMovie> movieList = [];

  Future getSearchResult(String query) async {
    movieList.clear();
    movieList = await _movieApi.getSearchMovieList(query);
    notifyListeners();
  }

  String getPosterUrl(SearchMovie movie) {
    return 'https://image.tmdb.org/t/p/w500${movie.posterPath}';
  }
}
