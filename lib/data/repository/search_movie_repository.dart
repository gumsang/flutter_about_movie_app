import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import '../datasource/search_api.dart';

class SearchMovieRepository {
  final _searchApi = SearchApi();

  Future<List<AboutMovieModel>> getSearchResult(String query) async {
    List<AboutMovieModel> movieList =
        await _searchApi.getSearchMovieList(query);
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
