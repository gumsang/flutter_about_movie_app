import '../model/about_movie_model.dart';
import '../util/result.dart';

abstract class MovieApi {
  Future<Result<List<AboutMovieModel>>> getMovieList();
  Future<Result<List<AboutMovieModel>>> getSearchMovieList(String query);
}
