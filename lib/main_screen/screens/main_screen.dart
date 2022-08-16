import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/detail_screen/screens/detail_screen.dart';
import 'package:flutter_about_movie_app/main_screen/view_model/movie_view_model.dart';
import 'package:provider/provider.dart';

import '../../detail_screen/view_model/detail_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _searchBoolean = false;
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    final detailViewModel = context.watch<DetailViewModel>();
    return Scaffold(
      appBar: AppBar(
        actions: !_searchBoolean
            ? [
                IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _searchBoolean = true;
                      });
                    })
              ]
            : [
                IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      setState(() {
                        _searchBoolean = false;
                      });
                    })
              ],
        title: !_searchBoolean ? const Text("영화 리스트") : _searchTextField(),
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
                        detailViewModel.getDetail(
                            viewModel.movieList[index].id.toString());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DetailScreen(),
                            ));
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

  Widget _searchTextField() {
    return const TextField(
      autofocus: true, //Display the keyboard when TextField is displayed
      cursorColor: Colors.white,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
      textInputAction:
          TextInputAction.search, //Specify the action button on the keyboard
      decoration: InputDecoration(
        //Style of TextField
        enabledBorder: UnderlineInputBorder(
            //Default TextField border
            borderSide: BorderSide(color: Colors.white)),
        focusedBorder: UnderlineInputBorder(
            //Borders when a TextField is in focus
            borderSide: BorderSide(color: Colors.white)),
        hintText: 'Search', //Text that is displayed when nothing is entered.
        hintStyle: TextStyle(
          //Style of hintText
          color: Colors.white60,
          fontSize: 20,
        ),
      ),
    );
  }
}
