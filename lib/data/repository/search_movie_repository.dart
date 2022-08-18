import '../datasource/search_api.dart';
import '../model/search_movie_model.dart';

class SearchMovieRepository {
  final _searchApi = SearchApi();

  Future<List<SearchMovie>> getSearchResult(String query) async {
    List<SearchMovie> movieList = await _searchApi.getSearchMovieList(query);
    return movieList.where((element) => element.posterPath != null).map(
      (e) {
        String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
        e.posterPath = path;
        return e;
      },
    ).toList();
  }
}
