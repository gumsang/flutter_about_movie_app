import 'package:flutter_about_movie_app/data/datasource/movie_api.dart';
import 'package:flutter_about_movie_app/data/datasource/movie_api_impl.dart';
import 'package:flutter_about_movie_app/data/repository/movie_repository.dart';
import 'package:flutter_about_movie_app/data/repository/movie_repository_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final movieApiProvider = Provider<MovieApi>((_) => MovieApiImpl());
final movieRepoProvider = Provider<MovieRepository>(
    ((ref) => MovieRepositoryImpl(ref.watch(movieApiProvider))));
