// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainAction {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(String query) getSearch,
    required TResult Function() home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetList value) getList,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(GetHome value) home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainActionCopyWith<$Res> {
  factory $MainActionCopyWith(
          MainAction value, $Res Function(MainAction) then) =
      _$MainActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$MainActionCopyWithImpl<$Res> implements $MainActionCopyWith<$Res> {
  _$MainActionCopyWithImpl(this._value, this._then);

  final MainAction _value;
  // ignore: unused_field
  final $Res Function(MainAction) _then;
}

/// @nodoc
abstract class _$$GetListCopyWith<$Res> {
  factory _$$GetListCopyWith(_$GetList value, $Res Function(_$GetList) then) =
      __$$GetListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetListCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetListCopyWith<$Res> {
  __$$GetListCopyWithImpl(_$GetList _value, $Res Function(_$GetList) _then)
      : super(_value, (v) => _then(v as _$GetList));

  @override
  _$GetList get _value => super._value as _$GetList;
}

/// @nodoc

class _$GetList implements GetList {
  const _$GetList();

  @override
  String toString() {
    return 'MainAction.getList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(String query) getSearch,
    required TResult Function() home,
  }) {
    return getList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
  }) {
    return getList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetList value) getList,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(GetHome value) home,
  }) {
    return getList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
  }) {
    return getList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) {
    if (getList != null) {
      return getList(this);
    }
    return orElse();
  }
}

abstract class GetList implements MainAction {
  const factory GetList() = _$GetList;
}

/// @nodoc
abstract class _$$GetSearchCopyWith<$Res> {
  factory _$$GetSearchCopyWith(
          _$GetSearch value, $Res Function(_$GetSearch) then) =
      __$$GetSearchCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class __$$GetSearchCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetSearchCopyWith<$Res> {
  __$$GetSearchCopyWithImpl(
      _$GetSearch _value, $Res Function(_$GetSearch) _then)
      : super(_value, (v) => _then(v as _$GetSearch));

  @override
  _$GetSearch get _value => super._value as _$GetSearch;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$GetSearch(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSearch implements GetSearch {
  const _$GetSearch(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'MainAction.getSearch(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSearch &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$GetSearchCopyWith<_$GetSearch> get copyWith =>
      __$$GetSearchCopyWithImpl<_$GetSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(String query) getSearch,
    required TResult Function() home,
  }) {
    return getSearch(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
  }) {
    return getSearch?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (getSearch != null) {
      return getSearch(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetList value) getList,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(GetHome value) home,
  }) {
    return getSearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
  }) {
    return getSearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) {
    if (getSearch != null) {
      return getSearch(this);
    }
    return orElse();
  }
}

abstract class GetSearch implements MainAction {
  const factory GetSearch(final String query) = _$GetSearch;

  String get query;
  @JsonKey(ignore: true)
  _$$GetSearchCopyWith<_$GetSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeCopyWith<$Res> {
  factory _$$GetHomeCopyWith(_$GetHome value, $Res Function(_$GetHome) then) =
      __$$GetHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeCopyWithImpl<$Res> extends _$MainActionCopyWithImpl<$Res>
    implements _$$GetHomeCopyWith<$Res> {
  __$$GetHomeCopyWithImpl(_$GetHome _value, $Res Function(_$GetHome) _then)
      : super(_value, (v) => _then(v as _$GetHome));

  @override
  _$GetHome get _value => super._value as _$GetHome;
}

/// @nodoc

class _$GetHome implements GetHome {
  const _$GetHome();

  @override
  String toString() {
    return 'MainAction.home()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getList,
    required TResult Function(String query) getSearch,
    required TResult Function() home,
  }) {
    return home();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
  }) {
    return home?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getList,
    TResult Function(String query)? getSearch,
    TResult Function()? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetList value) getList,
    required TResult Function(GetSearch value) getSearch,
    required TResult Function(GetHome value) home,
  }) {
    return home(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
  }) {
    return home?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetList value)? getList,
    TResult Function(GetSearch value)? getSearch,
    TResult Function(GetHome value)? home,
    required TResult orElse(),
  }) {
    if (home != null) {
      return home(this);
    }
    return orElse();
  }
}

abstract class GetHome implements MainAction {
  const factory GetHome() = _$GetHome;
}
