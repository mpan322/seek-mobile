// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_collections.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftCollections extends NftCollections {
  @override
  final int total;
  @override
  final BuiltList<NftCollection> collections;
  @override
  final String? continuation;

  factory _$NftCollections([void Function(NftCollectionsBuilder)? updates]) =>
      (NftCollectionsBuilder()..update(updates))._build();

  _$NftCollections._(
      {required this.total, required this.collections, this.continuation})
      : super._();
  @override
  NftCollections rebuild(void Function(NftCollectionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftCollectionsBuilder toBuilder() => NftCollectionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftCollections &&
        total == other.total &&
        collections == other.collections &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, collections.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftCollections')
          ..add('total', total)
          ..add('collections', collections)
          ..add('continuation', continuation))
        .toString();
  }
}

class NftCollectionsBuilder
    implements Builder<NftCollections, NftCollectionsBuilder> {
  _$NftCollections? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<NftCollection>? _collections;
  ListBuilder<NftCollection> get collections =>
      _$this._collections ??= ListBuilder<NftCollection>();
  set collections(ListBuilder<NftCollection>? collections) =>
      _$this._collections = collections;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  NftCollectionsBuilder() {
    NftCollections._defaults(this);
  }

  NftCollectionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _collections = $v.collections.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftCollections other) {
    _$v = other as _$NftCollections;
  }

  @override
  void update(void Function(NftCollectionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftCollections build() => _build();

  _$NftCollections _build() {
    _$NftCollections _$result;
    try {
      _$result = _$v ??
          _$NftCollections._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'NftCollections', 'total'),
            collections: collections.build(),
            continuation: continuation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'collections';
        collections.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftCollections', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
