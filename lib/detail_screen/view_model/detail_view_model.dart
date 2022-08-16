import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/detail_screen/model/detail_movie.dart';

import '../api/detail_api.dart';
import '../../component/model.dart';

class DetailViewModel extends ChangeNotifier {
  final _detailApi = DetailApi();
  DetailMovie movie = DetailMovie();

  Future getDetail(String id) async {
    movie = await _detailApi.getMovieDetail(id);
    notifyListeners();
  }

  String getPosterUrl(DetailMovie movie) {
    return 'https://image.tmdb.org/t/p/w500${movie.posterPath}';
  }

  String getMoviesName(DetailMovie movie) {
    return movie.title!;
  }
}
