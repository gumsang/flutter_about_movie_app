import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/ui/movie_detail/movie_detail_view_model.dart';
import 'package:flutter_about_movie_app/ui/movie/movie_view_model.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatelessWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieDetailViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("상세 페이지"),
      ),
      body: viewModel.movie.title == null
          ? const CircularProgressIndicator()
          : SingleChildScrollView(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      viewModel.movie.posterPath!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(viewModel.movie.title),
                  Text(viewModel.movie.overview),
                ],
              ),
            ),
    );
  }
}
