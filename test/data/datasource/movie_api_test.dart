import 'package:flutter_about_movie_app/data/datasource/movie_api_impl.dart';
import 'package:flutter_about_movie_app/data/model/about_movie_model.dart';
import 'package:flutter_about_movie_app/data/util/result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  test('잘 가져와야 한다', () async {
    final mockClient = MockClient((request) async {
      if (request.url.toString() ==
          'https://api.themoviedb.org/3/search/movie?language=ko-KR&api_key=a64533e7ece6c72731da47c9c8bc691f&query=minion') {
        return Response(fakeData, 200);
      }
      return Response('error', 404);
    });
    final api = MovieApiImpl(client: mockClient);

    Result<List<AboutMovieModel>> movieList =
        await api.getSearchMovieList('minion');
    List<AboutMovieModel> items = [];
    movieList.when(success: (movies) {
      items = movies.where((element) => element.posterPath != null).map(
        (e) {
          final AboutMovieModel temp;
          String path = 'https://image.tmdb.org/t/p/w500${e.posterPath}';
          temp = e.copyWith(posterPath: path);
          return temp;
        },
      ).toList();
    }, error: (e) {
      items = [];
    });

    expect(items[0].title, 'Cro Minion');
  });
}

const fakeData = """
{
  "page": 1,
  "results": [
    {
      "adult": false,
      "backdrop_path": "/taCWtbPrBNooPqavM9dktdPYtIj.jpg",
      "genre_ids": [
        16,
        10751
      ],
      "id": 366141,
      "original_language": "en",
      "original_title": "Cro Minion",
      "overview": "",
      "popularity": 29.471,
      "poster_path": "/57j78RppxH7JQg0u2UslVllyBKk.jpg",
      "release_date": "2015-11-04",
      "title": "Cro Minion",
      "video": false,
      "vote_average": 7.2,
      "vote_count": 174
    },
    {
      "adult": false,
      "backdrop_path": "/cQ3tM5ueROE3s7nT86fmdjh5kvS.jpg",
      "genre_ids": [
        10751,
        12,
        16,
        35
      ],
      "id": 286558,
      "original_language": "en",
      "original_title": "Despicable Me Presents: Minion Madness",
      "overview": "",
      "popularity": 65.549,
      "poster_path": "/vTaOgxhK5MFarbJZ5rCBif40599.jpg",
      "release_date": "2010-12-14",
      "title": "Despicable Me Presents: Minion Madness",
      "video": true,
      "vote_average": 6.9,
      "vote_count": 147
    },
    {
      "adult": false,
      "backdrop_path": "/8Kkp2tK9GcdS31VxZUhJyMHS5fp.jpg",
      "genre_ids": [
        16
      ],
      "id": 624995,
      "original_language": "en",
      "original_title": "Minion Scouts",
      "overview": "",
      "popularity": 8.809,
      "poster_path": "/8l2y1VCgMcAD1mmqadhJowUCE1H.jpg",
      "release_date": "2019-08-27",
      "title": "Minion Scouts",
      "video": false,
      "vote_average": 7,
      "vote_count": 11
    },
    {
      "adult": false,
      "backdrop_path": "/gHYSkkgfO7DlkjzOgpytkrL1Jg9.jpg",
      "genre_ids": [
        27,
        28,
        14
      ],
      "id": 51831,
      "original_language": "en",
      "original_title": "The Minion",
      "overview": "2000",
      "popularity": 4.458,
      "poster_path": "/2bijabzmUl48qWoG3y2gZ2qfxyW.jpg",
      "release_date": "1998-09-26",
      "title": "minion",
      "video": false,
      "vote_average": 4.5,
      "vote_count": 26
    },
    {
      "adult": false,
      "backdrop_path": "/nmGWzTLMXy9x7mKd8NKPLmHtWGa.jpg",
      "genre_ids": [
        16,
        12,
        35,
        14
      ],
      "id": 438148,
      "original_language": "en",
      "original_title": "Minions: The Rise of Gru",
      "overview": "2222",
      "popularity": 2785.106,
      "poster_path": "/1heBUD8o0sgdqLWyeXkylR2POKb.jpg",
      "release_date": "2022-06-29",
      "title": "minions 2",
      "video": false,
      "vote_average": 7.7,
      "vote_count": 1616
    },
    {
      "adult": false,
      "backdrop_path": "/nI7x3gMtHg0L2SEtWlumoMVVTmr.jpg",
      "genre_ids": [
        16,
        10751
      ],
      "id": 501104,
      "original_language": "en",
      "original_title": "Minion Moments: Overkill",
      "overview": "",
      "popularity": 2.013,
      "poster_path": "/grTeVcG9Tkr5YJantK1RRl8M6HR.jpg",
      "release_date": "2017-12-05",
      "title": "Minion Moments: Overkill",
      "video": false,
      "vote_average": 6,
      "vote_count": 2
    },
    {
      "adult": false,
      "backdrop_path": "/d7agIcSuRJpBDDF4GU4DR8BEPKz.jpg",
      "genre_ids": [
        16,
        12,
        35,
        10751,
        878
      ],
      "id": 943482,
      "original_language": "en",
      "original_title": "Despicable Me: Minion Mayhem",
      "overview": "",
      "popularity": 1.727,
      "poster_path": "/a4decOGsC1Z0KqJsP0cUr11jzZR.jpg",
      "release_date": "2012-07-02",
      "title": "Despicable Me: Minion Mayhem",
      "video": false,
      "vote_average": 2,
      "vote_count": 1
    },
    {
      "adult": false,
      "backdrop_path": "/mXpC1096rTJaPanoxp08m8vEeEZ.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 778370,
      "original_language": "en",
      "original_title": "Illumination Presents: 10 Minion Mini-Movies",
      "overview": "",
      "popularity": 2.623,
      "poster_path": "/srMx2wGs4f0iUEl4VvEuT8e5SYV.jpg",
      "release_date": "2019-01-15",
      "title": "Illumination Presents: 10 Minion Mini-Movies",
      "video": true,
      "vote_average": 6,
      "vote_count": 1
    },
    {
      "adult": false,
      "backdrop_path": "/2npLU4eRXIODQZBNg7bcUbsPBSz.jpg",
      "genre_ids": [
        16,
        10751
      ],
      "id": 501102,
      "original_language": "en",
      "original_title": "Minion Moments: Drenched",
      "overview": "",
      "popularity": 0.996,
      "poster_path": "/2PYUQBmeQHKsmUydawpoQ3vSmH6.jpg",
      "release_date": "2017-12-05",
      "title": "Minion Moments: Drenched",
      "video": false,
      "vote_average": 10,
      "vote_count": 1
    },
    {
      "adult": false,
      "backdrop_path": "/lGStpJioaJSEFFI1vVxhHcyebYH.jpg",
      "genre_ids": [
        16
      ],
      "id": 808468,
      "original_language": "ja",
      "original_title": "Minion: mutabloop",
      "overview": "",
      "popularity": 0.6,
      "poster_path": "/mKUZvDVkX7H4vrjcH89Vqh15S1H.jpg",
      "release_date": "2017-02-02",
      "title": "Minion: mutabloop",
      "video": false,
      "vote_average": 0,
      "vote_count": 0
    },
    {
      "adult": false,
      "backdrop_path": "/jRSgHNh49mRW5TfKZGWkfHpVSYM.jpg",
      "genre_ids": [
        16
      ],
      "id": 808470,
      "original_language": "ja",
      "original_title": "Minion: oktometempsychosis",
      "overview": "",
      "popularity": 0.6,
      "poster_path": "/wwMP1ASNOpk4m4rHYWiHah3C9B6.jpg",
      "release_date": "2019-09-09",
      "title": "Minion: oktometempsychosis",
      "video": false,
      "vote_average": 0,
      "vote_count": 0
    },
    {
      "adult": false,
      "backdrop_path": "/c7xTZ9EA6GpH72xJC5s0x0KKR1a.jpg",
      "genre_ids": [
        10751,
        16,
        12,
        35
      ],
      "id": 211672,
      "original_language": "en",
      "original_title": "Minions",
      "overview": "3333",
      "popularity": 79.666,
      "poster_path": "/bkWrtIS7vscRvK074BWn6WHuwuf.jpg",
      "release_date": "2015-06-17",
      "title": "minions",
      "video": false,
      "vote_average": 6.4,
      "vote_count": 9470
    },
    {
      "adult": false,
      "backdrop_path": "/vK48h2fZarnDjXdsnHZFyL5lveI.jpg",
      "genre_ids": [
        16,
        10751,
        35,
        878
      ],
      "id": 229407,
      "original_language": "en",
      "original_title": "Minions: Puppy",
      "overview": "",
      "popularity": 38.362,
      "poster_path": "/bapLpnoV3PUbgcZNDwg6Hxe75HI.jpg",
      "release_date": "2013-12-10",
      "title": "Minions: Puppy",
      "video": false,
      "vote_average": 7.3,
      "vote_count": 180
    },
    {
      "adult": false,
      "backdrop_path": "/wPgAh9xtJL10WcFy93uTqD6sl1l.jpg",
      "genre_ids": [
        16,
        35,
        10751
      ],
      "id": 229408,
      "original_language": "en",
      "original_title": "Minions: Training Wheels",
      "overview": "",
      "popularity": 26.977,
      "poster_path": "/5irlpcx6tmpQ5sq42nojwICZrHN.jpg",
      "release_date": "2013-12-10",
      "title": "Minions: Training Wheels",
      "video": false,
      "vote_average": 7.1,
      "vote_count": 143
    },
    {
      "adult": false,
      "backdrop_path": "/2Hckt3ug71qy1z9qrzHZx94pP0v.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 54553,
      "original_language": "en",
      "original_title": "Minions: Home Makeover",
      "overview": "",
      "popularity": 24.794,
      "poster_path": "/ch1QTMEOBrBhSSILw6CPFXCdxgB.jpg",
      "release_date": "2010-12-13",
      "title": "Minions: Home Makeover",
      "video": false,
      "vote_average": 6.8,
      "vote_count": 138
    },
    {
      "adult": false,
      "backdrop_path": "/rWXhj6vAVstbZdNRrgF8tAXrx1y.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 54559,
      "original_language": "en",
      "original_title": "Minions: Orientation Day",
      "overview": "",
      "popularity": 25.183,
      "poster_path": "/bSTNLXAqkLmImXNcELrdCaew8dj.jpg",
      "release_date": "2010-12-13",
      "title": "Minions: Orientation Day",
      "video": false,
      "vote_average": 6.9,
      "vote_count": 156
    },
    {
      "adult": false,
      "backdrop_path": "/3MqoFBr3pDgmM4ylbqB6syCifNf.jpg",
      "genre_ids": [
        35,
        16
      ],
      "id": 403052,
      "original_language": "en",
      "original_title": "Mower Minions",
      "overview": "",
      "popularity": 21.297,
      "poster_path": "/oKVtq8SvLaybXC9oofod4uLRfyW.jpg",
      "release_date": "2016-07-08",
      "title": "Mower Minions",
      "video": false,
      "vote_average": 6.6,
      "vote_count": 137
    },
    {
      "adult": false,
      "backdrop_path": "/fDjknkPghKnkFqqG268QEaW79X1.jpg",
      "genre_ids": [
        16,
        10751,
        35
      ],
      "id": 54551,
      "original_language": "en",
      "original_title": "Banana",
      "overview": "",
      "popularity": 22.335,
      "poster_path": "/AnmIMKAQjXLjD2DI0ba4D9DpkHv.jpg",
      "release_date": "2010-12-13",
      "title": "Banana",
      "video": false,
      "vote_average": 7.2,
      "vote_count": 235
    },
    {
      "adult": false,
      "backdrop_path": "/rRaXGX3COvkEf55Zfo0DVYsrPVf.jpg",
      "genre_ids": [
        16,
        10751,
        10402
      ],
      "id": 375186,
      "original_language": "en",
      "original_title": "Minions Jingle Bells",
      "overview": "",
      "popularity": 8.688,
      "poster_path": "/h8anavBbJ2EbR1AEEaqeaPmuH3P.jpg",
      "release_date": "2014-12-11",
      "title": "Minions Jingle Bells",
      "video": false,
      "vote_average": 6.2,
      "vote_count": 12
    },
    {
      "adult": false,
      "backdrop_path": "/7bBOpBMTf0OfjZRLlWZPbPrJkHW.jpg",
      "genre_ids": [
        10751,
        16,
        12,
        35
      ],
      "id": 440769,
      "original_language": "en",
      "original_title": "Minions: 3 Mini-Movie Collection",
      "overview": "",
      "popularity": 16.206,
      "poster_path": "/yoWytTZRJjGXhkRcxVBvnOHKX85.jpg",
      "release_date": "2016-03-25",
      "title": "Minions: 3 Mini-Movie Collection",
      "video": true,
      "vote_average": 6.7,
      "vote_count": 25
    }
  ],
  "total_pages": 3,
  "total_results": 42
}
""";
