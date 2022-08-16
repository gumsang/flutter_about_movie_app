import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/main_screen/view_model/movie_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("상세 페이지"),
      ),
      body: Center(
          child: Expanded(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                viewModel.getPosterUrl(viewModel.movieList[index]),
                fit: BoxFit.cover,
              ),
            ),
            Text(viewModel.movieList[index].title as String),
          ],
        ),
      )),
    );
  }
}
