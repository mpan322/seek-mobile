// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_nft_order_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PageNftOrderItem extends PageNftOrderItem {
  @override
  final BuiltList<NftOrderItem> data;
  @override
  final String? continuation;

  factory _$PageNftOrderItem(
          [void Function(PageNftOrderItemBuilder)? updates]) =>
      (PageNftOrderItemBuilder()..update(updates))._build();

  _$PageNftOrderItem._({required this.data, this.continuation}) : super._();
  @override
  PageNftOrderItem rebuild(void Function(PageNftOrderItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageNftOrderItemBuilder toBuilder() =>
      PageNftOrderItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageNftOrderItem &&
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
    return (newBuiltValueToStringHelper(r'PageNftOrderItem')
          ..add('data', data)
          ..add('continuation', continuation))
        .toString();
  }
}

class PageNftOrderItemBuilder
    implements Builder<PageNftOrderItem, PageNftOrderItemBuilder> {
  _$PageNftOrderItem? _$v;

  ListBuilder<NftOrderItem>? _data;
  ListBuilder<NftOrderItem> get data =>
      _$this._data ??= ListBuilder<NftOrderItem>();
  set data(ListBuilder<NftOrderItem>? data) => _$this._data = data;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  PageNftOrderItemBuilder() {
    PageNftOrderItem._defaults(this);
  }

  PageNftOrderItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageNftOrderItem other) {
    _$v = other as _$PageNftOrderItem;
  }

  @override
  void update(void Function(PageNftOrderItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PageNftOrderItem build() => _build();

  _$PageNftOrderItem _build() {
    _$PageNftOrderItem _$result;
    try {
      _$result = _$v ??
          _$PageNftOrderItem._(
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
            r'PageNftOrderItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
