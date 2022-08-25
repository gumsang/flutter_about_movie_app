import 'package:flutter_about_movie_app/data/datasource/detail_api.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:flutter_about_movie_app/data/repository/detail_movie_repository.dart';

class DetailMovieRepositoryImpl implements DetailMovieRepository {
  final DetailApi _api;
  DetailMovieRepositoryImpl(this._api);

  @override
  Future<AboutMovieModel> getMovieDetail(String query) async {
    Map<String, dynamic> json = await _api.getMovieDetail(query);
    return AboutMovieModel.fromJson(json);
  }
}
