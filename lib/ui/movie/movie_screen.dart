import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/ui/components/on_hover_animation.dart';
import 'package:flutter_about_movie_app/ui/components/scale_animation.dart';
import 'package:flutter_about_movie_app/ui/main_action.dart';
import 'package:provider/provider.dart';

import '../movie_detail/movie_detail_screen.dart';
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
  void initState() {
    super.initState();
    Future.microtask(() {
      final viewModel = context.read<MovieViewModel>();
      viewModel.onAction(const MainAction.getList());
      viewModel.eventStream.listen((event) {
        event.when(
          showSnackBar: (message) {
            final snackBar = SnackBar(
              content: Text(message),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          showDialog: (message) {
            showDialog<void>(
              context: context,
              barrierDismissible: false, // user must tap button!
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('AlertDialog Title'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text(message),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: const Text('Approve'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      });
    });
  }

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
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    viewModel.onAction(const MainAction.home());
                  },
                ),
                IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      setState(() {
                        _searchBoolean = true;
                      });
                    }),
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
                      viewModel
                          .onAction(MainAction.getSearch(_controller.text));
                      _controller.clear();
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
      body: viewModel.state.movies.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 150,
                              childAspectRatio: 2 / 3.6,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20),
                      itemCount: viewModel.state.movies.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return GestureDetector(
                          key: ValueKey(viewModel.state.movies[index]),
                          onTap: () {
                            final movie = viewModel.state.movies[index];
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration:
                                    const Duration(milliseconds: 1),
                                pageBuilder: (_, __, ___) =>
                                    MovieDetailScreen(movie),
                              ),
                            );
                          },
                          child: ScaleAnimation(
                            child: Column(
                              children: [
                                Hero(
                                  tag: viewModel.state.movies[index].id,
                                  child: OnHoverAnimation(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.network(
                                        viewModel
                                            .state.movies[index].posterPath!,
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  viewModel.state.movies[index].title,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
