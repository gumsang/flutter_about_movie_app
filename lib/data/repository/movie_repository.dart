import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';

import '../util/result.dart';

abstract class MovieRepository {
  Future<Result<List<AboutMovieModel>>> getResult();
  Future<Result<List<AboutMovieModel>>> getSearchResult(String query);
}
