import '../model/about_movie_model.dart';

abstract class MovieApi {
  Future<List<AboutMovieModel>> getMovieList();
  Future<List<AboutMovieModel>> getSearchMovieList(String query);
}
