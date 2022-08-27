// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'main_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainUiEvent<T> {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
    required TResult Function(ShowDialog<T> value) showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    TResult Function(ShowDialog<T> value)? showDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    TResult Function(ShowDialog<T> value)? showDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainUiEventCopyWith<T, MainUiEvent<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainUiEventCopyWith<T, $Res> {
  factory $MainUiEventCopyWith(
          MainUiEvent<T> value, $Res Function(MainUiEvent<T>) then) =
      _$MainUiEventCopyWithImpl<T, $Res>;
  $Res call({String message});
}

/// @nodoc
class _$MainUiEventCopyWithImpl<T, $Res>
    implements $MainUiEventCopyWith<T, $Res> {
  _$MainUiEventCopyWithImpl(this._value, this._then);

  final MainUiEvent<T> _value;
  // ignore: unused_field
  final $Res Function(MainUiEvent<T>) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$ShowSnackBarCopyWith<T, $Res>
    implements $MainUiEventCopyWith<T, $Res> {
  factory _$$ShowSnackBarCopyWith(
          _$ShowSnackBar<T> value, $Res Function(_$ShowSnackBar<T>) then) =
      __$$ShowSnackBarCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ShowSnackBarCopyWithImpl<T, $Res>
    extends _$MainUiEventCopyWithImpl<T, $Res>
    implements _$$ShowSnackBarCopyWith<T, $Res> {
  __$$ShowSnackBarCopyWithImpl(
      _$ShowSnackBar<T> _value, $Res Function(_$ShowSnackBar<T>) _then)
      : super(_value, (v) => _then(v as _$ShowSnackBar<T>));

  @override
  _$ShowSnackBar<T> get _value => super._value as _$ShowSnackBar<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowSnackBar<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowSnackBar<T> implements ShowSnackBar<T> {
  const _$ShowSnackBar(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainUiEvent<$T>.showSnackBar(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSnackBar<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowSnackBarCopyWith<T, _$ShowSnackBar<T>> get copyWith =>
      __$$ShowSnackBarCopyWithImpl<T, _$ShowSnackBar<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) showDialog,
  }) {
    return showSnackBar(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
  }) {
    return showSnackBar?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
    required TResult Function(ShowDialog<T> value) showDialog,
  }) {
    return showSnackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    TResult Function(ShowDialog<T> value)? showDialog,
  }) {
    return showSnackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    TResult Function(ShowDialog<T> value)? showDialog,
    required TResult orElse(),
  }) {
    if (showSnackBar != null) {
      return showSnackBar(this);
    }
    return orElse();
  }
}

abstract class ShowSnackBar<T> implements MainUiEvent<T> {
  const factory ShowSnackBar(final String message) = _$ShowSnackBar<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowSnackBarCopyWith<T, _$ShowSnackBar<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowDialogCopyWith<T, $Res>
    implements $MainUiEventCopyWith<T, $Res> {
  factory _$$ShowDialogCopyWith(
          _$ShowDialog<T> value, $Res Function(_$ShowDialog<T>) then) =
      __$$ShowDialogCopyWithImpl<T, $Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$ShowDialogCopyWithImpl<T, $Res>
    extends _$MainUiEventCopyWithImpl<T, $Res>
    implements _$$ShowDialogCopyWith<T, $Res> {
  __$$ShowDialogCopyWithImpl(
      _$ShowDialog<T> _value, $Res Function(_$ShowDialog<T>) _then)
      : super(_value, (v) => _then(v as _$ShowDialog<T>));

  @override
  _$ShowDialog<T> get _value => super._value as _$ShowDialog<T>;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ShowDialog<T>(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowDialog<T> implements ShowDialog<T> {
  const _$ShowDialog(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MainUiEvent<$T>.showDialog(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialog<T> &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$ShowDialogCopyWith<T, _$ShowDialog<T>> get copyWith =>
      __$$ShowDialogCopyWithImpl<T, _$ShowDialog<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) showSnackBar,
    required TResult Function(String message) showDialog,
  }) {
    return showDialog(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
  }) {
    return showDialog?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? showSnackBar,
    TResult Function(String message)? showDialog,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowSnackBar<T> value) showSnackBar,
    required TResult Function(ShowDialog<T> value) showDialog,
  }) {
    return showDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    TResult Function(ShowDialog<T> value)? showDialog,
  }) {
    return showDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowSnackBar<T> value)? showSnackBar,
    TResult Function(ShowDialog<T> value)? showDialog,
    required TResult orElse(),
  }) {
    if (showDialog != null) {
      return showDialog(this);
    }
    return orElse();
  }
}

abstract class ShowDialog<T> implements MainUiEvent<T> {
  const factory ShowDialog(final String message) = _$ShowDialog<T>;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowDialogCopyWith<T, _$ShowDialog<T>> get copyWith =>
      throw _privateConstructorUsedError;
}