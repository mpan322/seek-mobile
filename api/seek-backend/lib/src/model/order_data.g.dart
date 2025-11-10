// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderDataDataTypeEnum _$orderDataDataTypeEnum_oPENSEAV1DATAV1 =
    const OrderDataDataTypeEnum._('oPENSEAV1DATAV1');

OrderDataDataTypeEnum _$orderDataDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'oPENSEAV1DATAV1':
      return _$orderDataDataTypeEnum_oPENSEAV1DATAV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderDataDataTypeEnum> _$orderDataDataTypeEnumValues =
    BuiltSet<OrderDataDataTypeEnum>(const <OrderDataDataTypeEnum>[
  _$orderDataDataTypeEnum_oPENSEAV1DATAV1,
]);

const OrderDataFeeMethodEnum _$orderDataFeeMethodEnum_PROTOCOL_FEE =
    const OrderDataFeeMethodEnum._('PROTOCOL_FEE');
const OrderDataFeeMethodEnum _$orderDataFeeMethodEnum_SPLIT_FEE =
    const OrderDataFeeMethodEnum._('SPLIT_FEE');

OrderDataFeeMethodEnum _$orderDataFeeMethodEnumValueOf(String name) {
  switch (name) {
    case 'PROTOCOL_FEE':
      return _$orderDataFeeMethodEnum_PROTOCOL_FEE;
    case 'SPLIT_FEE':
      return _$orderDataFeeMethodEnum_SPLIT_FEE;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderDataFeeMethodEnum> _$orderDataFeeMethodEnumValues =
    BuiltSet<OrderDataFeeMethodEnum>(const <OrderDataFeeMethodEnum>[
  _$orderDataFeeMethodEnum_PROTOCOL_FEE,
  _$orderDataFeeMethodEnum_SPLIT_FEE,
]);

const OrderDataSideEnum _$orderDataSideEnum_BUY =
    const OrderDataSideEnum._('BUY');
const OrderDataSideEnum _$orderDataSideEnum_SELL =
    const OrderDataSideEnum._('SELL');

OrderDataSideEnum _$orderDataSideEnumValueOf(String name) {
  switch (name) {
    case 'BUY':
      return _$orderDataSideEnum_BUY;
    case 'SELL':
      return _$orderDataSideEnum_SELL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderDataSideEnum> _$orderDataSideEnumValues =
    BuiltSet<OrderDataSideEnum>(const <OrderDataSideEnum>[
  _$orderDataSideEnum_BUY,
  _$orderDataSideEnum_SELL,
]);

const OrderDataSaleKindEnum _$orderDataSaleKindEnum_FIXED_PRICE =
    const OrderDataSaleKindEnum._('FIXED_PRICE');
const OrderDataSaleKindEnum _$orderDataSaleKindEnum_DUTCH_AUCTION =
    const OrderDataSaleKindEnum._('DUTCH_AUCTION');

OrderDataSaleKindEnum _$orderDataSaleKindEnumValueOf(String name) {
  switch (name) {
    case 'FIXED_PRICE':
      return _$orderDataSaleKindEnum_FIXED_PRICE;
    case 'DUTCH_AUCTION':
      return _$orderDataSaleKindEnum_DUTCH_AUCTION;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderDataSaleKindEnum> _$orderDataSaleKindEnumValues =
    BuiltSet<OrderDataSaleKindEnum>(const <OrderDataSaleKindEnum>[
  _$orderDataSaleKindEnum_FIXED_PRICE,
  _$orderDataSaleKindEnum_DUTCH_AUCTION,
]);

const OrderDataHowToCallEnum _$orderDataHowToCallEnum_CALL =
    const OrderDataHowToCallEnum._('CALL');
const OrderDataHowToCallEnum _$orderDataHowToCallEnum_DELEGATE_CALL =
    const OrderDataHowToCallEnum._('DELEGATE_CALL');

OrderDataHowToCallEnum _$orderDataHowToCallEnumValueOf(String name) {
  switch (name) {
    case 'CALL':
      return _$orderDataHowToCallEnum_CALL;
    case 'DELEGATE_CALL':
      return _$orderDataHowToCallEnum_DELEGATE_CALL;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderDataHowToCallEnum> _$orderDataHowToCallEnumValues =
    BuiltSet<OrderDataHowToCallEnum>(const <OrderDataHowToCallEnum>[
  _$orderDataHowToCallEnum_CALL,
  _$orderDataHowToCallEnum_DELEGATE_CALL,
]);

Serializer<OrderDataDataTypeEnum> _$orderDataDataTypeEnumSerializer =
    _$OrderDataDataTypeEnumSerializer();
Serializer<OrderDataFeeMethodEnum> _$orderDataFeeMethodEnumSerializer =
    _$OrderDataFeeMethodEnumSerializer();
Serializer<OrderDataSideEnum> _$orderDataSideEnumSerializer =
    _$OrderDataSideEnumSerializer();
Serializer<OrderDataSaleKindEnum> _$orderDataSaleKindEnumSerializer =
    _$OrderDataSaleKindEnumSerializer();
Serializer<OrderDataHowToCallEnum> _$orderDataHowToCallEnumSerializer =
    _$OrderDataHowToCallEnumSerializer();

class _$OrderDataDataTypeEnumSerializer
    implements PrimitiveSerializer<OrderDataDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'oPENSEAV1DATAV1': 'OPEN_SEA_V1_DATA_V1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN_SEA_V1_DATA_V1': 'oPENSEAV1DATAV1',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDataDataTypeEnum];
  @override
  final String wireName = 'OrderDataDataTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderDataDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderDataDataTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderDataDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderDataFeeMethodEnumSerializer
    implements PrimitiveSerializer<OrderDataFeeMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'PROTOCOL_FEE': 'PROTOCOL_FEE',
    'SPLIT_FEE': 'SPLIT_FEE',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'PROTOCOL_FEE': 'PROTOCOL_FEE',
    'SPLIT_FEE': 'SPLIT_FEE',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDataFeeMethodEnum];
  @override
  final String wireName = 'OrderDataFeeMethodEnum';

  @override
  Object serialize(Serializers serializers, OrderDataFeeMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderDataFeeMethodEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderDataFeeMethodEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderDataSideEnumSerializer
    implements PrimitiveSerializer<OrderDataSideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'BUY': 'BUY',
    'SELL': 'SELL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'BUY': 'BUY',
    'SELL': 'SELL',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDataSideEnum];
  @override
  final String wireName = 'OrderDataSideEnum';

  @override
  Object serialize(Serializers serializers, OrderDataSideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderDataSideEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderDataSideEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderDataSaleKindEnumSerializer
    implements PrimitiveSerializer<OrderDataSaleKindEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'FIXED_PRICE': 'FIXED_PRICE',
    'DUTCH_AUCTION': 'DUTCH_AUCTION',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'FIXED_PRICE': 'FIXED_PRICE',
    'DUTCH_AUCTION': 'DUTCH_AUCTION',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDataSaleKindEnum];
  @override
  final String wireName = 'OrderDataSaleKindEnum';

  @override
  Object serialize(Serializers serializers, OrderDataSaleKindEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderDataSaleKindEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderDataSaleKindEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderDataHowToCallEnumSerializer
    implements PrimitiveSerializer<OrderDataHowToCallEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CALL': 'CALL',
    'DELEGATE_CALL': 'DELEGATE_CALL',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CALL': 'CALL',
    'DELEGATE_CALL': 'DELEGATE_CALL',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderDataHowToCallEnum];
  @override
  final String wireName = 'OrderDataHowToCallEnum';

  @override
  Object serialize(Serializers serializers, OrderDataHowToCallEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderDataHowToCallEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderDataHowToCallEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderData extends OrderData {
  @override
  final OneOf oneOf;

  factory _$OrderData([void Function(OrderDataBuilder)? updates]) =>
      (OrderDataBuilder()..update(updates))._build();

  _$OrderData._({required this.oneOf}) : super._();
  @override
  OrderData rebuild(void Function(OrderDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderDataBuilder toBuilder() => OrderDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderData && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderData')..add('oneOf', oneOf))
        .toString();
  }
}

class OrderDataBuilder implements Builder<OrderData, OrderDataBuilder> {
  _$OrderData? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderDataBuilder() {
    OrderData._defaults(this);
  }

  OrderDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderData other) {
    _$v = other as _$OrderData;
  }

  @override
  void update(void Function(OrderDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderData build() => _build();

  _$OrderData _build() {
    final _$result = _$v ??
        _$OrderData._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'OrderData', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
