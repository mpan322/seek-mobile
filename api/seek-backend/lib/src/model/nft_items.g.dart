// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nft_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$NftItems extends NftItems {
  @override
  final int total;
  @override
  final BuiltList<NftItem> items;
  @override
  final String? continuation;

  factory _$NftItems([void Function(NftItemsBuilder)? updates]) =>
      (NftItemsBuilder()..update(updates))._build();

  _$NftItems._({required this.total, required this.items, this.continuation})
      : super._();
  @override
  NftItems rebuild(void Function(NftItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NftItemsBuilder toBuilder() => NftItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NftItems &&
        total == other.total &&
        items == other.items &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NftItems')
          ..add('total', total)
          ..add('items', items)
          ..add('continuation', continuation))
        .toString();
  }
}

class NftItemsBuilder implements Builder<NftItems, NftItemsBuilder> {
  _$NftItems? _$v;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  ListBuilder<NftItem>? _items;
  ListBuilder<NftItem> get items => _$this._items ??= ListBuilder<NftItem>();
  set items(ListBuilder<NftItem>? items) => _$this._items = items;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  NftItemsBuilder() {
    NftItems._defaults(this);
  }

  NftItemsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _items = $v.items.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NftItems other) {
    _$v = other as _$NftItems;
  }

  @override
  void update(void Function(NftItemsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NftItems build() => _build();

  _$NftItems _build() {
    _$NftItems _$result;
    try {
      _$result = _$v ??
          _$NftItems._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, r'NftItems', 'total'),
            items: items.build(),
            continuation: continuation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        items.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'NftItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
