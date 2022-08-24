import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';

abstract class MovieRepository {
  Future<List<AboutMovieModel>> getSearchResult();
}
