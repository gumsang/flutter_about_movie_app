import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../movie_detail/movie_detail_screen.dart';
import '../movie_detail/movie_detail_view_model.dart';
import 'movie_search_view_model.dart';

class MovieSearchScreen extends StatefulWidget {
  const MovieSearchScreen({Key? key}) : super(key: key);

  @override
  State<MovieSearchScreen> createState() => _MovieSearchScreenState();
}

class _MovieSearchScreenState extends State<MovieSearchScreen> {
  bool _searchBoolean = false;
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchviewModel = context.watch<MovieSearchViewModel>();
    final detailViewModel = context.watch<MovieDetailViewModel>();
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
            ? const Text("검색 결과")
            : TextField(
                controller: _controller,
                autofocus: true,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      if (_controller.text.isNotEmpty) {
                        searchviewModel.getSearchResult(_controller.text);
                        _controller.clear();
                      }
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
                      'Search', //Text that is displayed when nothing is entered.
                  hintStyle: const TextStyle(
                    //Style of hintText
                    color: Colors.white60,
                    fontSize: 20,
                  ),
                ),
              ),
      ),
      body: searchviewModel.movieList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 2 / 3.7,
                            crossAxisSpacing: 20,
                            mainAxisSpacing: 20),
                    itemCount: searchviewModel.movieList.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          detailViewModel.getDetail(
                              searchviewModel.movieList[index].id.toString());
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MovieDetailScreen(),
                              ));
                        },
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                searchviewModel.movieList[index].posterPath!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text(searchviewModel.movieList[index].title!),
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
