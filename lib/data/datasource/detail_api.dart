import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../api_keys/api_keys.dart';
import '../model/detail_movie_model.dart';

class DetailApi {
  Future<DetailMovie> getMovieDetail(String query) async {
    Uri url = Uri.parse(
        'https://api.themoviedb.org/3/movie/$query?api_key=$ssam_api_keys');

    http.Response response = await http.get(url);
    String jsonString = response.body;

    Map<String, dynamic> json = jsonDecode(jsonString);
    return DetailMovie.fromJson(json);
  }
}
