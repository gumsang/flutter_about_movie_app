import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:flutter_about_movie_app/data/repository/movie_repository.dart';

import '../datasource/movie_api.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl(this._api);

  @override
  Future<List<AboutMovieModel>> getResult() async {
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

  @override
  Future<List<AboutMovieModel>> getSearchResult(String query) async {
    List<AboutMovieModel> movieList = await _api.getSearchMovieList(query);
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
