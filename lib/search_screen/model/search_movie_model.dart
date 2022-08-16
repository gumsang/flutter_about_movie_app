class SearchMovie {
  bool? adult;
  List<int>? genreIds;
  num? id;
  String? originalLanguage;
  String? originalTitle;
  String? overview;
  double? popularity;
  String? posterPath;
  String? releaseDate;
  String? title;
  bool? video;
  num? voteAverage;
  int? voteCount;

  SearchMovie(
      {adult,
      backdropPath,
      genreIds,
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      video,
      voteAverage,
      voteCount});

  SearchMovie.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] as bool;
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'] as num;
    originalLanguage = json['original_language'] as String;
    originalTitle = json['original_title'] as String;
    overview = json['overview'] as String;
    popularity = json['popularity'] as double;
    if (json['poster_path'] != null) {
      posterPath = json['poster_path'] as String;
    }
    releaseDate = json['release_date'] as String;
    title = json['title'] as String;
    video = json['video'] as bool;
    voteAverage = json['vote_average'] as num;
    voteCount = json['vote_count'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['adult'] = adult;
    data['genre_ids'] = genreIds;
    data['id'] = id;
    data['original_language'] = originalLanguage;
    data['original_title'] = originalTitle;
    data['overview'] = overview;
    data['popularity'] = popularity;
    data['poster_path'] = posterPath;
    data['release_date'] = releaseDate;
    data['title'] = title;
    data['video'] = video;
    data['vote_average'] = voteAverage;
    data['vote_count'] = voteCount;
    return data;
  }
}
