// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_nft_order_ownership_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageNftOrderOwnershipItem extends PageNftOrderOwnershipItem {
  @override
  final BuiltList<NftOrderOwnership> data;
  @override
  final String? continuation;

  factory _$PageNftOrderOwnershipItem(
          [void Function(PageNftOrderOwnershipItemBuilder)? updates]) =>
      (PageNftOrderOwnershipItemBuilder()..update(updates))._build();

  _$PageNftOrderOwnershipItem._({required this.data, this.continuation})
      : super._();
  @override
  PageNftOrderOwnershipItem rebuild(
          void Function(PageNftOrderOwnershipItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageNftOrderOwnershipItemBuilder toBuilder() =>
      PageNftOrderOwnershipItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageNftOrderOwnershipItem &&
        data == other.data &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PageNftOrderOwnershipItem')
          ..add('data', data)
          ..add('continuation', continuation))
        .toString();
  }
}

class PageNftOrderOwnershipItemBuilder
    implements
        Builder<PageNftOrderOwnershipItem, PageNftOrderOwnershipItemBuilder> {
  _$PageNftOrderOwnershipItem? _$v;

  ListBuilder<NftOrderOwnership>? _data;
  ListBuilder<NftOrderOwnership> get data =>
      _$this._data ??= ListBuilder<NftOrderOwnership>();
  set data(ListBuilder<NftOrderOwnership>? data) => _$this._data = data;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  PageNftOrderOwnershipItemBuilder() {
    PageNftOrderOwnershipItem._defaults(this);
  }

  PageNftOrderOwnershipItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageNftOrderOwnershipItem other) {
    _$v = other as _$PageNftOrderOwnershipItem;
  }

  @override
  void update(void Function(PageNftOrderOwnershipItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageNftOrderOwnershipItem build() => _build();

  _$PageNftOrderOwnershipItem _build() {
    _$PageNftOrderOwnershipItem _$result;
    try {
      _$result = _$v ??
          _$PageNftOrderOwnershipItem._(
            data: data.build(),
            continuation: continuation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'PageNftOrderOwnershipItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
