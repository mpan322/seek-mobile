// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrdersPagination extends OrdersPagination {
  @override
  final BuiltList<Order> orders;
  @override
  final String? continuation;

  factory _$OrdersPagination(
          [void Function(OrdersPaginationBuilder)? updates]) =>
      (OrdersPaginationBuilder()..update(updates))._build();

  _$OrdersPagination._({required this.orders, this.continuation}) : super._();
  @override
  OrdersPagination rebuild(void Function(OrdersPaginationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersPaginationBuilder toBuilder() =>
      OrdersPaginationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersPagination &&
        orders == other.orders &&
        continuation == other.continuation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orders.hashCode);
    _$hash = $jc(_$hash, continuation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersPagination')
          ..add('orders', orders)
          ..add('continuation', continuation))
        .toString();
  }
}

class OrdersPaginationBuilder
    implements Builder<OrdersPagination, OrdersPaginationBuilder> {
  _$OrdersPagination? _$v;

  ListBuilder<Order>? _orders;
  ListBuilder<Order> get orders => _$this._orders ??= ListBuilder<Order>();
  set orders(ListBuilder<Order>? orders) => _$this._orders = orders;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  OrdersPaginationBuilder() {
    OrdersPagination._defaults(this);
  }

  OrdersPaginationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orders = $v.orders.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersPagination other) {
    _$v = other as _$OrdersPagination;
  }

  @override
  void update(void Function(OrdersPaginationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersPagination build() => _build();

  _$OrdersPagination _build() {
    _$OrdersPagination _$result;
    try {
      _$result = _$v ??
          _$OrdersPagination._(
            orders: orders.build(),
            continuation: continuation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'orders';
        orders.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrdersPagination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
