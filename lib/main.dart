import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'main_screen/screens/main_screen.dart';
import 'main_screen/view_model/movie_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MovieViewModel(),
        child: const MainScreen(),
      ),
    );
  }
}
