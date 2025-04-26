// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBooks,
    required TResult Function(List<Book> books, bool canLoadMore)
        booksListLoaded,
    required TResult Function(
            String message, List<Book> books, bool canLoadMore)
        booksLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBooks,
    TResult? Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult? Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBooks,
    TResult Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBooks value) loadingBooks,
    required TResult Function(_BooksListLoaded value) booksListLoaded,
    required TResult Function(_BooksLoadFail value) booksLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBooks value)? loadingBooks,
    TResult? Function(_BooksListLoaded value)? booksListLoaded,
    TResult? Function(_BooksLoadFail value)? booksLoadFail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBooks value)? loadingBooks,
    TResult Function(_BooksListLoaded value)? booksListLoaded,
    TResult Function(_BooksLoadFail value)? booksLoadFail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BooksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBooks,
    required TResult Function(List<Book> books, bool canLoadMore)
        booksListLoaded,
    required TResult Function(
            String message, List<Book> books, bool canLoadMore)
        booksLoadFail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBooks,
    TResult? Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult? Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBooks,
    TResult Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBooks value) loadingBooks,
    required TResult Function(_BooksListLoaded value) booksListLoaded,
    required TResult Function(_BooksLoadFail value) booksLoadFail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBooks value)? loadingBooks,
    TResult? Function(_BooksListLoaded value)? booksListLoaded,
    TResult? Function(_BooksLoadFail value)? booksLoadFail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBooks value)? loadingBooks,
    TResult Function(_BooksListLoaded value)? booksListLoaded,
    TResult Function(_BooksLoadFail value)? booksLoadFail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BooksState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingBooksImplCopyWith<$Res> {
  factory _$$LoadingBooksImplCopyWith(
          _$LoadingBooksImpl value, $Res Function(_$LoadingBooksImpl) then) =
      __$$LoadingBooksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingBooksImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$LoadingBooksImpl>
    implements _$$LoadingBooksImplCopyWith<$Res> {
  __$$LoadingBooksImplCopyWithImpl(
      _$LoadingBooksImpl _value, $Res Function(_$LoadingBooksImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingBooksImpl implements _LoadingBooks {
  const _$LoadingBooksImpl();

  @override
  String toString() {
    return 'BooksState.loadingBooks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingBooksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBooks,
    required TResult Function(List<Book> books, bool canLoadMore)
        booksListLoaded,
    required TResult Function(
            String message, List<Book> books, bool canLoadMore)
        booksLoadFail,
  }) {
    return loadingBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBooks,
    TResult? Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult? Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
  }) {
    return loadingBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBooks,
    TResult Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
    required TResult orElse(),
  }) {
    if (loadingBooks != null) {
      return loadingBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBooks value) loadingBooks,
    required TResult Function(_BooksListLoaded value) booksListLoaded,
    required TResult Function(_BooksLoadFail value) booksLoadFail,
  }) {
    return loadingBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBooks value)? loadingBooks,
    TResult? Function(_BooksListLoaded value)? booksListLoaded,
    TResult? Function(_BooksLoadFail value)? booksLoadFail,
  }) {
    return loadingBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBooks value)? loadingBooks,
    TResult Function(_BooksListLoaded value)? booksListLoaded,
    TResult Function(_BooksLoadFail value)? booksLoadFail,
    required TResult orElse(),
  }) {
    if (loadingBooks != null) {
      return loadingBooks(this);
    }
    return orElse();
  }
}

abstract class _LoadingBooks implements BooksState {
  const factory _LoadingBooks() = _$LoadingBooksImpl;
}

/// @nodoc
abstract class _$$BooksListLoadedImplCopyWith<$Res> {
  factory _$$BooksListLoadedImplCopyWith(_$BooksListLoadedImpl value,
          $Res Function(_$BooksListLoadedImpl) then) =
      __$$BooksListLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Book> books, bool canLoadMore});
}

/// @nodoc
class __$$BooksListLoadedImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksListLoadedImpl>
    implements _$$BooksListLoadedImplCopyWith<$Res> {
  __$$BooksListLoadedImplCopyWithImpl(
      _$BooksListLoadedImpl _value, $Res Function(_$BooksListLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? books = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$BooksListLoadedImpl(
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BooksListLoadedImpl implements _BooksListLoaded {
  const _$BooksListLoadedImpl(
      {required final List<Book> books, required this.canLoadMore})
      : _books = books;

  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final bool canLoadMore;

  @override
  String toString() {
    return 'BooksState.booksListLoaded(books: $books, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksListLoadedImpl &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_books), canLoadMore);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksListLoadedImplCopyWith<_$BooksListLoadedImpl> get copyWith =>
      __$$BooksListLoadedImplCopyWithImpl<_$BooksListLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBooks,
    required TResult Function(List<Book> books, bool canLoadMore)
        booksListLoaded,
    required TResult Function(
            String message, List<Book> books, bool canLoadMore)
        booksLoadFail,
  }) {
    return booksListLoaded(books, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBooks,
    TResult? Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult? Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
  }) {
    return booksListLoaded?.call(books, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBooks,
    TResult Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
    required TResult orElse(),
  }) {
    if (booksListLoaded != null) {
      return booksListLoaded(books, canLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBooks value) loadingBooks,
    required TResult Function(_BooksListLoaded value) booksListLoaded,
    required TResult Function(_BooksLoadFail value) booksLoadFail,
  }) {
    return booksListLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBooks value)? loadingBooks,
    TResult? Function(_BooksListLoaded value)? booksListLoaded,
    TResult? Function(_BooksLoadFail value)? booksLoadFail,
  }) {
    return booksListLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBooks value)? loadingBooks,
    TResult Function(_BooksListLoaded value)? booksListLoaded,
    TResult Function(_BooksLoadFail value)? booksLoadFail,
    required TResult orElse(),
  }) {
    if (booksListLoaded != null) {
      return booksListLoaded(this);
    }
    return orElse();
  }
}

abstract class _BooksListLoaded implements BooksState {
  const factory _BooksListLoaded(
      {required final List<Book> books,
      required final bool canLoadMore}) = _$BooksListLoadedImpl;

  List<Book> get books;
  bool get canLoadMore;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksListLoadedImplCopyWith<_$BooksListLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooksLoadFailImplCopyWith<$Res> {
  factory _$$BooksLoadFailImplCopyWith(
          _$BooksLoadFailImpl value, $Res Function(_$BooksLoadFailImpl) then) =
      __$$BooksLoadFailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message, List<Book> books, bool canLoadMore});
}

/// @nodoc
class __$$BooksLoadFailImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksLoadFailImpl>
    implements _$$BooksLoadFailImplCopyWith<$Res> {
  __$$BooksLoadFailImplCopyWithImpl(
      _$BooksLoadFailImpl _value, $Res Function(_$BooksLoadFailImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? books = null,
    Object? canLoadMore = null,
  }) {
    return _then(_$BooksLoadFailImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      books: null == books
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      canLoadMore: null == canLoadMore
          ? _value.canLoadMore
          : canLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BooksLoadFailImpl implements _BooksLoadFail {
  const _$BooksLoadFailImpl(
      {required this.message,
      required final List<Book> books,
      required this.canLoadMore})
      : _books = books;

  @override
  final String message;
  final List<Book> _books;
  @override
  List<Book> get books {
    if (_books is EqualUnmodifiableListView) return _books;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_books);
  }

  @override
  final bool canLoadMore;

  @override
  String toString() {
    return 'BooksState.booksLoadFail(message: $message, books: $books, canLoadMore: $canLoadMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksLoadFailImpl &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._books, _books) &&
            (identical(other.canLoadMore, canLoadMore) ||
                other.canLoadMore == canLoadMore));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message,
      const DeepCollectionEquality().hash(_books), canLoadMore);

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksLoadFailImplCopyWith<_$BooksLoadFailImpl> get copyWith =>
      __$$BooksLoadFailImplCopyWithImpl<_$BooksLoadFailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingBooks,
    required TResult Function(List<Book> books, bool canLoadMore)
        booksListLoaded,
    required TResult Function(
            String message, List<Book> books, bool canLoadMore)
        booksLoadFail,
  }) {
    return booksLoadFail(message, books, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadingBooks,
    TResult? Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult? Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
  }) {
    return booksLoadFail?.call(message, books, canLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingBooks,
    TResult Function(List<Book> books, bool canLoadMore)? booksListLoaded,
    TResult Function(String message, List<Book> books, bool canLoadMore)?
        booksLoadFail,
    required TResult orElse(),
  }) {
    if (booksLoadFail != null) {
      return booksLoadFail(message, books, canLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingBooks value) loadingBooks,
    required TResult Function(_BooksListLoaded value) booksListLoaded,
    required TResult Function(_BooksLoadFail value) booksLoadFail,
  }) {
    return booksLoadFail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingBooks value)? loadingBooks,
    TResult? Function(_BooksListLoaded value)? booksListLoaded,
    TResult? Function(_BooksLoadFail value)? booksLoadFail,
  }) {
    return booksLoadFail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingBooks value)? loadingBooks,
    TResult Function(_BooksListLoaded value)? booksListLoaded,
    TResult Function(_BooksLoadFail value)? booksLoadFail,
    required TResult orElse(),
  }) {
    if (booksLoadFail != null) {
      return booksLoadFail(this);
    }
    return orElse();
  }
}

abstract class _BooksLoadFail implements BooksState {
  const factory _BooksLoadFail(
      {required final String message,
      required final List<Book> books,
      required final bool canLoadMore}) = _$BooksLoadFailImpl;

  String get message;
  List<Book> get books;
  bool get canLoadMore;

  /// Create a copy of BooksState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooksLoadFailImplCopyWith<_$BooksLoadFailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
