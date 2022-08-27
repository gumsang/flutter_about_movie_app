import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_about_movie_app/ui/main_ui_event.dart';

import '../../data/repository/movie_repository.dart';
import '../main_action.dart';
import '../main_state.dart';

class MovieViewModel extends ChangeNotifier {
  final MovieRepository _movieRepository;

  MainState _state = const MainState();

  MainState get state => _state;
  final _eventController = StreamController<MainUiEvent>();
  Stream<MainUiEvent> get eventStream => _eventController.stream;

  MovieViewModel(this._movieRepository);

  void onAction(MainAction action) {
    action.when(
      getList: () {
        _getList();
      },
      getSearch: (query) {
        if (query.isEmpty) {
          _eventController.add(const MainUiEvent.showDialog('검색어를 입력해 주세요'));
          return;
        }
        _getSearchList(query);
      },
      home: () {
        _getList();
      },
    );
  }

  Future _getList() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final result = await _movieRepository.getResult();
    result.when(
      success: (movies) {
        _state = state.copyWith(
          movies: movies,
          isLoading: false,
        );
        notifyListeners();
      },
      error: (message) {
        _state = state.copyWith(
          movies: [],
          isLoading: false,
        );
        notifyListeners();
        _eventController.add(MainUiEvent.showSnackBar(message));
      },
    );
    notifyListeners();
  }

  Future _getSearchList(String query) async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();

    final result = await _movieRepository.getSearchResult(query);
    result.when(
      success: (movies) {
        _state = state.copyWith(
          movies: movies,
          isLoading: false,
        );
        notifyListeners();
      },
      error: (message) {
        _state = state.copyWith(
          movies: [],
          isLoading: false,
        );
        notifyListeners();
        _eventController.add(MainUiEvent.showSnackBar(message));
      },
    );
    notifyListeners();
  }
}
