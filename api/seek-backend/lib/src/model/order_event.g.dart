// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderEventTypeEnum _$orderEventTypeEnum_UPDATE =
    const OrderEventTypeEnum._('UPDATE');

OrderEventTypeEnum _$orderEventTypeEnumValueOf(String name) {
  switch (name) {
    case 'UPDATE':
      return _$orderEventTypeEnum_UPDATE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderEventTypeEnum> _$orderEventTypeEnumValues =
    BuiltSet<OrderEventTypeEnum>(const <OrderEventTypeEnum>[
  _$orderEventTypeEnum_UPDATE,
]);

Serializer<OrderEventTypeEnum> _$orderEventTypeEnumSerializer =
    _$OrderEventTypeEnumSerializer();

class _$OrderEventTypeEnumSerializer
    implements PrimitiveSerializer<OrderEventTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'UPDATE': 'UPDATE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'UPDATE': 'UPDATE',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderEventTypeEnum];
  @override
  final String wireName = 'OrderEventTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderEventTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderEventTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderEventTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderEvent extends OrderEvent {
  @override
  final String eventId;
  @override
  final String orderId;
  @override
  final OneOf oneOf;

  factory _$OrderEvent([void Function(OrderEventBuilder)? updates]) =>
      (OrderEventBuilder()..update(updates))._build();

  _$OrderEvent._(
      {required this.eventId, required this.orderId, required this.oneOf})
      : super._();
  @override
  OrderEvent rebuild(void Function(OrderEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderEventBuilder toBuilder() => OrderEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderEvent &&
        eventId == other.eventId &&
        orderId == other.orderId &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, eventId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderEvent')
          ..add('eventId', eventId)
          ..add('orderId', orderId)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderEventBuilder implements Builder<OrderEvent, OrderEventBuilder> {
  _$OrderEvent? _$v;

  String? _eventId;
  String? get eventId => _$this._eventId;
  set eventId(String? eventId) => _$this._eventId = eventId;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderEventBuilder() {
    OrderEvent._defaults(this);
  }

  OrderEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _orderId = $v.orderId;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderEvent other) {
    _$v = other as _$OrderEvent;
  }

  @override
  void update(void Function(OrderEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderEvent build() => _build();

  _$OrderEvent _build() {
    final _$result = _$v ??
        _$OrderEvent._(
          eventId: BuiltValueNullFieldError.checkNotNull(
              eventId, r'OrderEvent', 'eventId'),
          orderId: BuiltValueNullFieldError.checkNotNull(
              orderId, r'OrderEvent', 'orderId'),
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'OrderEvent', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
