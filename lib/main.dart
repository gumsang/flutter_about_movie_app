import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'detail_screen/view_model/detail_view_model.dart';
import 'main_screen/screens/main_screen.dart';
import 'main_screen/view_model/movie_view_model.dart';

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
        ChangeNotifierProvider(
          create: (_) => DetailViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
