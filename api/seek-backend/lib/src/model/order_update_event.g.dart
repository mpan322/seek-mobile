// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_update_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderUpdateEventTypeEnum _$orderUpdateEventTypeEnum_UPDATE =
    const OrderUpdateEventTypeEnum._('UPDATE');

OrderUpdateEventTypeEnum _$orderUpdateEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$orderUpdateEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderUpdateEventTypeEnum> _$orderUpdateEventTypeEnumValues =
    BuiltSet<OrderUpdateEventTypeEnum>(const <OrderUpdateEventTypeEnum>[
  _$orderUpdateEventTypeEnum_UPDATE,
]);

Serializer<OrderUpdateEventTypeEnum> _$orderUpdateEventTypeEnumSerializer =
    _$OrderUpdateEventTypeEnumSerializer();

class _$OrderUpdateEventTypeEnumSerializer
    implements PrimitiveSerializer<OrderUpdateEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderUpdateEventTypeEnum];
  @override
  final String wireName = 'OrderUpdateEventTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderUpdateEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderUpdateEventTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderUpdateEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderUpdateEvent extends OrderUpdateEvent {
  @override
  final Order order;
  @override
  final OrderUpdateEventTypeEnum? type;

  factory _$OrderUpdateEvent(
          [void Function(OrderUpdateEventBuilder)? updates]) =>
      (OrderUpdateEventBuilder()..update(updates))._build();

  _$OrderUpdateEvent._({required this.order, this.type}) : super._();
  @override
  OrderUpdateEvent rebuild(void Function(OrderUpdateEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderUpdateEventBuilder toBuilder() =>
      OrderUpdateEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderUpdateEvent &&
        order == other.order &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderUpdateEvent')
          ..add('order', order)
          ..add('type', type))
        .toString();
  }
}

class OrderUpdateEventBuilder
    implements Builder<OrderUpdateEvent, OrderUpdateEventBuilder> {
  _$OrderUpdateEvent? _$v;

  OrderBuilder? _order;
  OrderBuilder get order => _$this._order ??= OrderBuilder();
  set order(OrderBuilder? order) => _$this._order = order;

  OrderUpdateEventTypeEnum? _type;
  OrderUpdateEventTypeEnum? get type => _$this._type;
  set type(OrderUpdateEventTypeEnum? type) => _$this._type = type;

  OrderUpdateEventBuilder() {
    OrderUpdateEvent._defaults(this);
  }

  OrderUpdateEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _order = $v.order.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderUpdateEvent other) {
    _$v = other as _$OrderUpdateEvent;
  }

  @override
  void update(void Function(OrderUpdateEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderUpdateEvent build() => _build();

  _$OrderUpdateEvent _build() {
    _$OrderUpdateEvent _$result;
    try {
      _$result = _$v ??
          _$OrderUpdateEvent._(
            order: order.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'order';
        order.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderUpdateEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
