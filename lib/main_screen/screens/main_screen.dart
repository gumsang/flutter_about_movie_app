import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/main_screen/model/model.dart';
import 'package:flutter_about_movie_app/main_screen/view_model/movie_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text("영화 리스트"),
      ),
      body: Center(
        child: viewModel.movieList.isEmpty
            ? const CircularProgressIndicator()
            : Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 3.3,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: viewModel.movieList.length,
                  itemBuilder: (BuildContext ctx, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => ,))
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              viewModel
                                  .getPosterUrl(viewModel.movieList[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(viewModel.movieList[index].title as String),
                        ],
                      ),
                    );
                  },
                ),
              ),
      ),
    );
  }
}
