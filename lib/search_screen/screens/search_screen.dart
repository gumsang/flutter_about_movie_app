import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../detail_screen/screens/detail_screen.dart';
import '../../detail_screen/view_model/detail_view_model.dart';
import '../../search_screen/view_model/search_movie_view_model.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _searchBoolean = false;
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
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
                    child: const Icon(Icons.search),
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
      body: Center(
        child: searchviewModel.movieList.isEmpty
            ? const CircularProgressIndicator()
            : Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 4,
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
                              builder: (context) => const DetailScreen(),
                            ));
                      },
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              searchviewModel.getPosterUrl(
                                  searchviewModel.movieList[index]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                              searchviewModel.movieList[index].title as String),
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
