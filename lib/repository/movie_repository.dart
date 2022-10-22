// api 호출
import 'dart:convert';

import 'package:today_protest2/model/movie_model.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  final _queryParam = {'api_key': 'd2e8a427410c90431670bdff1f3d1c3e'};
  final _url = 'api.themoviedb.org';

  Future<List<Movie>> loadMovies() async {
    final movies = Uri.https(_url, '3/movie/popular', _queryParam);
    // final movies = Uri.https(
    // 'https://api.themoviedb.org/3/movie/popular?api_key=d2e8a427410c90431670bdff1f3d1c3e');
    final response = await http.get(movies);
    // response.body != null ? Map<String,dynamic> body = json.decoder(response.body);
    Map<String, dynamic> body = json.decode(response.body);
    List<dynamic> list = body["results"];
    final result = list.map<Movie>((item) => Movie.fromJson(item)).toList();
    return result;
  }
}
