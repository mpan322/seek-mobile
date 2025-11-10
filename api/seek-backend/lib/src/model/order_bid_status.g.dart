// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_bid_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderBidStatus _$ACTIVE = const OrderBidStatus._('ACTIVE');
const OrderBidStatus _$FILLED = const OrderBidStatus._('FILLED');
const OrderBidStatus _$HISTORICAL = const OrderBidStatus._('HISTORICAL');
const OrderBidStatus _$INACTIVE = const OrderBidStatus._('INACTIVE');
const OrderBidStatus _$CANCELLED = const OrderBidStatus._('CANCELLED');

OrderBidStatus _$valueOf(String name) {
  switch (name) {
    case 'ACTIVE':
      return _$ACTIVE;
    case 'FILLED':
      return _$FILLED;
    case 'HISTORICAL':
      return _$HISTORICAL;
    case 'INACTIVE':
      return _$INACTIVE;
    case 'CANCELLED':
      return _$CANCELLED;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderBidStatus> _$values =
    BuiltSet<OrderBidStatus>(const <OrderBidStatus>[
  _$ACTIVE,
  _$FILLED,
  _$HISTORICAL,
  _$INACTIVE,
  _$CANCELLED,
]);

class _$OrderBidStatusMeta {
  const _$OrderBidStatusMeta();
  OrderBidStatus get ACTIVE => _$ACTIVE;
  OrderBidStatus get FILLED => _$FILLED;
  OrderBidStatus get HISTORICAL => _$HISTORICAL;
  OrderBidStatus get INACTIVE => _$INACTIVE;
  OrderBidStatus get CANCELLED => _$CANCELLED;
  OrderBidStatus valueOf(String name) => _$valueOf(name);
  BuiltSet<OrderBidStatus> get values => _$values;
}

abstract class _$OrderBidStatusMixin {
  // ignore: non_constant_identifier_names
  _$OrderBidStatusMeta get OrderBidStatus => const _$OrderBidStatusMeta();
}

Serializer<OrderBidStatus> _$orderBidStatusSerializer =
    _$OrderBidStatusSerializer();

class _$OrderBidStatusSerializer
    implements PrimitiveSerializer<OrderBidStatus> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ACTIVE': 'ACTIVE',
    'FILLED': 'FILLED',
    'HISTORICAL': 'HISTORICAL',
    'INACTIVE': 'INACTIVE',
    'CANCELLED': 'CANCELLED',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ACTIVE': 'ACTIVE',
    'FILLED': 'FILLED',
    'HISTORICAL': 'HISTORICAL',
    'INACTIVE': 'INACTIVE',
    'CANCELLED': 'CANCELLED',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderBidStatus];
  @override
  final String wireName = 'OrderBidStatus';

  @override
  Object serialize(Serializers serializers, OrderBidStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderBidStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderBidStatus.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
