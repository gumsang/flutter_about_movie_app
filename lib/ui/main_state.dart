import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/model/about_movie_model.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default([]) List<AboutMovieModel> movies,
    @Default(false) bool isLoading,
  }) = _MainState;
}
