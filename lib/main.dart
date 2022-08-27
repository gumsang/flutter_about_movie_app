import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/data/datasource/movie_api_impl.dart';
import 'package:provider/provider.dart';

import 'data/repository/movie_repository_impl.dart';
import 'ui/movie/movie_screen.dart';
import 'ui/movie/movie_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) {
            return MovieViewModel(MovieRepositoryImpl(MovieApiImpl()));
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MovieScreen(),
      ),
    );
  }
}
