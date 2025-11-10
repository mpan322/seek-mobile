// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_bids_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderBidsPagination extends OrderBidsPagination {
  @override
  final BuiltList<OrderBid> items;
  @override
  final String? continuation;

  factory _$OrderBidsPagination(
          [void Function(OrderBidsPaginationBuilder)? updates]) =>
      (OrderBidsPaginationBuilder()..update(updates))._build();

  _$OrderBidsPagination._({required this.items, this.continuation}) : super._();
  @override
  OrderBidsPagination rebuild(
          void Function(OrderBidsPaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBidsPaginationBuilder toBuilder() =>
      OrderBidsPaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderBidsPagination &&
        items == other.items &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, items.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderBidsPagination')
          ..add('items', items)
          ..add('continuation', continuation))
        .toString();
  }
}

class OrderBidsPaginationBuilder
    implements Builder<OrderBidsPagination, OrderBidsPaginationBuilder> {
  _$OrderBidsPagination? _$v;

  ListBuilder<OrderBid>? _items;
  ListBuilder<OrderBid> get items => _$this._items ??= ListBuilder<OrderBid>();
  set items(ListBuilder<OrderBid>? items) => _$this._items = items;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  OrderBidsPaginationBuilder() {
    OrderBidsPagination._defaults(this);
  }

  OrderBidsPaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderBidsPagination other) {
    _$v = other as _$OrderBidsPagination;
  }

  @override
  void update(void Function(OrderBidsPaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderBidsPagination build() => _build();

  _$OrderBidsPagination _build() {
    _$OrderBidsPagination _$result;
    try {
      _$result = _$v ??
          _$OrderBidsPagination._(
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
            r'OrderBidsPagination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
