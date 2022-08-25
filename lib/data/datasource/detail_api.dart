import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';

abstract class DetailApi {
  Future<Map<String, dynamic>> getMovieDetail(String query);
}
