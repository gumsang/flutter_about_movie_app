import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/ui/movie_search/movie_search_screen.dart';
import 'package:provider/provider.dart';
import '../movie_detail/movie_detail_screen.dart';
import '../movie_detail/movie_detail_view_model.dart';
import '../movie_search/movie_search_view_model.dart';
import 'movie_view_model.dart';

class MovieScreen extends StatefulWidget {
  const MovieScreen({Key? key}) : super(key: key);

  @override
  State<MovieScreen> createState() => _MovieScreenState();
}

class _MovieScreenState extends State<MovieScreen> {
  bool _searchBoolean = false;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
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
                        _controller.clear();
                      });
                    })
              ],
        title: !_searchBoolean
            ? const Text("영화 리스트")
            : TextField(
                controller: _controller,
                autofocus: true,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      if (_controller.text.isNotEmpty) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChangeNotifierProvider(
                                create: (_) =>
                                    MovieSearchViewModel(_controller.text),
                                child: const MovieSearchScreen(),
                              ),
                            ));
                        _controller.clear();
                      } else {}
                    },
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  //Style of TextField
                  enabledBorder: const UnderlineInputBorder(
                      //Default TextField border
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: const UnderlineInputBorder(
                      //Borders when a TextField is in focus
                      borderSide: BorderSide(color: Colors.white)),
                  hintText:
                      '제목을 입력하세요', //Text that is displayed when nothing is entered.
                  hintStyle: const TextStyle(
                    //Style of hintText
                    color: Colors.white60,
                    fontSize: 20,
                  ),
                ),
              ),
      ),
      body: viewModel.movieList.isEmpty
          ? const CircularProgressIndicator()
          : Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 3.3,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: viewModel.movieList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          final movie = viewModel.movieList[index];
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangeNotifierProvider(
                                  create: (_) => MovieDetailViewModel(movie),
                                  child: const MovieDetailScreen(),
                                ),
                              ));
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                viewModel.movieList[index].posterPath!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(viewModel.movieList[index].title),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
