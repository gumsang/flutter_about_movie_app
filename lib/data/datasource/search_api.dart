import 'dart:convert';

import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';

import '../../api_keys/api_keys.dart';
import 'package:http/http.dart' as http;

class SearchApi {
  Future<List<AboutMovieModel>> getSearchMovieList(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/search/movie?language=ko-KR&api_key=$ssam_api_keys&query=$query');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);

    Iterable result = json['results'];
    return result.map((e) => AboutMovieModel.fromJson(e)).toList();
  }
}
