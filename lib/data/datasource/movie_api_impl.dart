import 'dart:convert';

import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:http/http.dart' as http;

import '../../api_keys/api_keys.dart';
import '../util/result.dart';
import 'movie_api.dart';

class MovieApiImpl implements MovieApi {
  final http.Client _client;

  MovieApiImpl({http.Client? client}) : _client = (client ?? http.Client());

  @override
  Future<Result<List<AboutMovieModel>>> getMovieList() async {
    try {
      Uri url = Uri.parse(
          'https://api.themoviedb.org/3/movie/upcoming?api_key=$ssam_api_keys&language=ko-KR&page=1');

      http.Response response = await _client.get(url);
      String jsonString = response.body;

      Map<String, dynamic> json = jsonDecode(jsonString);
      Iterable result = json['results'];
      List<AboutMovieModel> items =
          result.map((e) => AboutMovieModel.fromJson(e)).toList();
      return Result.success(items);
    } catch (e) {
      return Result.error(e.toString());
    }
  }

  @override
  Future<Result<List<AboutMovieModel>>> getSearchMovieList(String query) async {
    try {
      Uri url = Uri.parse(
          'https://api.themoviedb.org/3/search/movie?language=ko-KR&api_key=$ssam_api_keys&query=$query');

      http.Response response = await _client.get(url);
      String jsonString = response.body;

      Map<String, dynamic> json = jsonDecode(jsonString);

      Iterable result = json['results'];
      List<AboutMovieModel> items =
          result.map((e) => AboutMovieModel.fromJson(e)).toList();
      return Result.success(items);
    } catch (e) {
      return Result.error(e.toString());
    }
  }
}
