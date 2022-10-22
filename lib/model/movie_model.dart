class Movie {
  String overview;
  String posterPath;
  String title;
  Movie({required this.overview, this.posterPath = '', this.title = ''});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      overview: json["overview"],
      posterPath: json["poster_path"],
      title: json["title"],
    );
  }
}
