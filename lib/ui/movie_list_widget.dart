import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:today_protest2/provider/movie_provider.dart';
import 'package:today_protest2/shared/custom_text.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    MovieProvider movieProvider =
        Provider.of<MovieProvider>(context, listen: false);
    movieProvider.loadMovies();
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: 'movies',
        ),
      ),
      body: Consumer<MovieProvider>(
        builder: (context, provider, widget) {
          if (provider.movies.isNotEmpty) {
            return ListView.separated(
              itemCount: movieProvider.movies.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: CustomText(text: movieProvider.movies[index].title),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
