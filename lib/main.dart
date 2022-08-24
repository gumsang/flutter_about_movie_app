import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/ui/movie_search/movie_search_view_model.dart';
import 'package:provider/provider.dart';
import 'ui/movie_detail/movie_detail_view_model.dart';
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
          create: (_) => MovieViewModel(),
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
