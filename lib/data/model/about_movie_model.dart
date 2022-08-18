class AboutMovieModel {
  bool? adult;
  String? backdropPath;
  List<int>? genreIds;
  int? id;
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

  AboutMovieModel(
      {this.adult,
      this.backdropPath,
      this.genreIds,
      this.id,
      this.originalLanguage,
      this.originalTitle,
      this.overview,
      this.popularity,
      this.posterPath,
      this.releaseDate,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount});

  AboutMovieModel.fromJson(Map<String, dynamic> json) {
    adult = json['adult'] as bool;
    backdropPath = json['backdrop_path'] as String;
    genreIds = json['genre_ids'].cast<int>();
    id = json['id'] as int;
    originalLanguage = json['original_language'] as String;
    originalTitle = json['original_title'] as String;
    overview = json['overview'] as String;
    popularity = json['popularity'] as double;
    posterPath = json['poster_path'] as String;
    releaseDate = json['release_date'] as String;
    title = json['title'] as String;
    video = json['video'] as bool;
    voteAverage = json['vote_average'] as num;
    voteCount = json['vote_count'] as int;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['adult'] = adult;
    data['backdrop_path'] = backdropPath;
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
