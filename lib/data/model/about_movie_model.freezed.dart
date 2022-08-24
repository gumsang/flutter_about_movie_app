// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'about_movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AboutMovieModel _$AboutMovieModelFromJson(Map<String, dynamic> json) {
  return _AboutMovieModel.fromJson(json);
}

/// @nodoc
mixin _$AboutMovieModel {
  int get id => throw _privateConstructorUsedError;
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: 'poster_path')
  String? get posterPath => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AboutMovieModelCopyWith<AboutMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutMovieModelCopyWith<$Res> {
  factory $AboutMovieModelCopyWith(
          AboutMovieModel value, $Res Function(AboutMovieModel) then) =
      _$AboutMovieModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      String title});
}

/// @nodoc
class _$AboutMovieModelCopyWithImpl<$Res>
    implements $AboutMovieModelCopyWith<$Res> {
  _$AboutMovieModelCopyWithImpl(this._value, this._then);

  final AboutMovieModel _value;
  // ignore: unused_field
  final $Res Function(AboutMovieModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AboutMovieModelCopyWith<$Res>
    implements $AboutMovieModelCopyWith<$Res> {
  factory _$$_AboutMovieModelCopyWith(
          _$_AboutMovieModel value, $Res Function(_$_AboutMovieModel) then) =
      __$$_AboutMovieModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String overview,
      @JsonKey(name: 'poster_path') String? posterPath,
      String title});
}

/// @nodoc
class __$$_AboutMovieModelCopyWithImpl<$Res>
    extends _$AboutMovieModelCopyWithImpl<$Res>
    implements _$$_AboutMovieModelCopyWith<$Res> {
  __$$_AboutMovieModelCopyWithImpl(
      _$_AboutMovieModel _value, $Res Function(_$_AboutMovieModel) _then)
      : super(_value, (v) => _then(v as _$_AboutMovieModel));

  @override
  _$_AboutMovieModel get _value => super._value as _$_AboutMovieModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? overview = freezed,
    Object? posterPath = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_AboutMovieModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AboutMovieModel implements _AboutMovieModel {
  const _$_AboutMovieModel(
      {required this.id,
      required this.overview,
      @JsonKey(name: 'poster_path') this.posterPath,
      required this.title});

  factory _$_AboutMovieModel.fromJson(Map<String, dynamic> json) =>
      _$$_AboutMovieModelFromJson(json);

  @override
  final int id;
  @override
  final String overview;
  @override
  @JsonKey(name: 'poster_path')
  final String? posterPath;
  @override
  final String title;

  @override
  String toString() {
    return 'AboutMovieModel(id: $id, overview: $overview, posterPath: $posterPath, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AboutMovieModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.overview, overview) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(overview),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_AboutMovieModelCopyWith<_$_AboutMovieModel> get copyWith =>
      __$$_AboutMovieModelCopyWithImpl<_$_AboutMovieModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AboutMovieModelToJson(
      this,
    );
  }
}

abstract class _AboutMovieModel implements AboutMovieModel {
  const factory _AboutMovieModel(
      {required final int id,
      required final String overview,
      @JsonKey(name: 'poster_path') final String? posterPath,
      required final String title}) = _$_AboutMovieModel;

  factory _AboutMovieModel.fromJson(Map<String, dynamic> json) =
      _$_AboutMovieModel.fromJson;

  @override
  int get id;
  @override
  String get overview;
  @override
  @JsonKey(name: 'poster_path')
  String? get posterPath;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$_AboutMovieModelCopyWith<_$_AboutMovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}
