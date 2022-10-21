import 'package:flutter/material.dart';

import '../model/movie_model.dart';

class MovieProvider extends ChangeNotifier {
  final List<Movie> _movies = [];
  List<Movie> get movies => _movies;
  loadMovies() {}
}
