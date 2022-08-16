import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/detail_screen/view_model/detail_view_model.dart';
import 'package:flutter_about_movie_app/main_screen/view_model/movie_view_model.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<DetailViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("상세 페이지"),
      ),
      body: viewModel.movie.title == null
          ? CircularProgressIndicator()
          : Center(
              child: Expanded(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      viewModel.getPosterUrl(viewModel.movie),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Text(viewModel.movie.title!),
                ],
              ),
            )),
    );
  }
}
