import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:flutter_about_movie_app/ui/components/scale_animation.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen(this.movie, {Key? key}) : super(key: key);
  final AboutMovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("상세 페이지"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ScaleAnimation(
              child: Hero(
                tag: movie.id,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    movie.posterPath!,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(movie.title),
            Text(movie.overview),
          ],
        ),
      ),
    );
  }
}
