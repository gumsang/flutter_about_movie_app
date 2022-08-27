import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:flutter_about_movie_app/data/repository/movie_repository.dart';

import '../datasource/movie_api.dart';
import '../util/result.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi _api;

  MovieRepositoryImpl(this._api);

  @override
  Future<Result<List<AboutMovieModel>>> getResult() async {
    try {
      Result<List<AboutMovieModel>> movieList = await _api.getMovieList();
      List<AboutMovieModel> items = [];
      movieList.when(success: (movies) {
        items = movies.where((element) => element.posterPath != null).map(
          (e) {
            final AboutMovieModel temp;
            String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
            temp = e.copyWith(posterPath: path);
            return temp;
          },
        ).toList();
      }, error: (e) {
        return Result.error(e.toString());
      });
      return Result.success(items);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<AboutMovieModel>>> getSearchResult(String query) async {
    try {
      Result<List<AboutMovieModel>> movieList =
          await _api.getSearchMovieList(query);
      List<AboutMovieModel> items = [];
      movieList.when(success: (movies) {
        items = movies.where((element) => element.posterPath != null).map(
          (e) {
            final AboutMovieModel temp;
            String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
            temp = e.copyWith(posterPath: path);
            return temp;
          },
        ).toList();
      }, error: (e) {
        return Result.error(e.toString());
      });
      return Result.success(items);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
