// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activities.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderActivities extends OrderActivities {
  @override
  final BuiltList<OrderActivity> items;
  @override
  final String? continuation;

  factory _$OrderActivities([void Function(OrderActivitiesBuilder)? updates]) =>
      (OrderActivitiesBuilder()..update(updates))._build();

  _$OrderActivities._({required this.items, this.continuation}) : super._();
  @override
  OrderActivities rebuild(void Function(OrderActivitiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivitiesBuilder toBuilder() => OrderActivitiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivities &&
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
    return (newBuiltValueToStringHelper(r'OrderActivities')
          ..add('items', items)
          ..add('continuation', continuation))
        .toString();
  }
}

class OrderActivitiesBuilder
    implements Builder<OrderActivities, OrderActivitiesBuilder> {
  _$OrderActivities? _$v;

  ListBuilder<OrderActivity>? _items;
  ListBuilder<OrderActivity> get items =>
      _$this._items ??= ListBuilder<OrderActivity>();
  set items(ListBuilder<OrderActivity>? items) => _$this._items = items;

  String? _continuation;
  String? get continuation => _$this._continuation;
  set continuation(String? continuation) => _$this._continuation = continuation;

  OrderActivitiesBuilder() {
    OrderActivities._defaults(this);
  }

  OrderActivitiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _items = $v.items.toBuilder();
      _continuation = $v.continuation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivities other) {
    _$v = other as _$OrderActivities;
  }

  @override
  void update(void Function(OrderActivitiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivities build() => _build();

  _$OrderActivities _build() {
    _$OrderActivities _$result;
    try {
      _$result = _$v ??
          _$OrderActivities._(
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
            r'OrderActivities', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
