import 'dart:convert';
import 'package:flutter_about_movie_app/component/model.dart';
import 'package:flutter_about_movie_app/detail_screen/model/detail_movie.dart';
import 'package:http/http.dart' as http;

import '../../api_keys/api_keys.dart';

class MovieApi {
  Future<List<AboutMovie>> getMovieList() async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=$ssam_api_keys&language=ko-KR&page=1');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    Iterable result = json['results'];
    return result.map((e) => AboutMovie.fromJson(e)).toList();
  }

  Future<DetailMovie> getMovieDetail(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/$query?api_key=$ssam_api_keys');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return DetailMovie.fromJson(json);
  }
}
