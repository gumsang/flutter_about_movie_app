import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/search_screen/screens/search_screen.dart';
import 'package:provider/provider.dart';
import '../../detail_screen/screens/detail_screen.dart';
import '../../detail_screen/view_model/detail_view_model.dart';
import '../../search_screen/view_model/search_movie_view_model.dart';
import '../view_model/movie_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool _searchBoolean = false;
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<MovieViewModel>();
    final searchviewModel = context.watch<SearchViewModel>();
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
                        searchviewModel.getSearchResult(_controller.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchScreen(),
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
}
