import 'dart:convert';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:http/http.dart' as http;

import '../../api_keys/api_keys.dart';
import 'detail_api.dart';

class DetailApiImpl implements DetailApi {
  @override
  Future<AboutMovieModel> getMovieDetail(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/$query?api_key=$ssam_api_keys');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return AboutMovieModel.fromJson(json);
  }
}
