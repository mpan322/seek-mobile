// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_filter_sell.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderFilterSellAtTypeEnum _$orderFilterSellAtTypeEnum_sell =
    const OrderFilterSellAtTypeEnum._('sell');

OrderFilterSellAtTypeEnum _$orderFilterSellAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'sell':
      return _$orderFilterSellAtTypeEnum_sell;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFilterSellAtTypeEnum> _$orderFilterSellAtTypeEnumValues =
    BuiltSet<OrderFilterSellAtTypeEnum>(const <OrderFilterSellAtTypeEnum>[
  _$orderFilterSellAtTypeEnum_sell,
]);

Serializer<OrderFilterSellAtTypeEnum> _$orderFilterSellAtTypeEnumSerializer =
    _$OrderFilterSellAtTypeEnumSerializer();

class _$OrderFilterSellAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderFilterSellAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sell': 'sell',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sell': 'sell',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFilterSellAtTypeEnum];
  @override
  final String wireName = 'OrderFilterSellAtTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderFilterSellAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFilterSellAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFilterSellAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderFilterSell extends OrderFilterSell {
  @override
  final OrderFilterSellAtTypeEnum atType;

  factory _$OrderFilterSell([void Function(OrderFilterSellBuilder)? updates]) =>
      (OrderFilterSellBuilder()..update(updates))._build();

  _$OrderFilterSell._({required this.atType}) : super._();
  @override
  OrderFilterSell rebuild(void Function(OrderFilterSellBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderFilterSellBuilder toBuilder() => OrderFilterSellBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderFilterSell && atType == other.atType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderFilterSell')
          ..add('atType', atType))
        .toString();
  }
}

class OrderFilterSellBuilder
    implements Builder<OrderFilterSell, OrderFilterSellBuilder> {
  _$OrderFilterSell? _$v;

  OrderFilterSellAtTypeEnum? _atType;
  OrderFilterSellAtTypeEnum? get atType => _$this._atType;
  set atType(OrderFilterSellAtTypeEnum? atType) => _$this._atType = atType;

  OrderFilterSellBuilder() {
    OrderFilterSell._defaults(this);
  }

  OrderFilterSellBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderFilterSell other) {
    _$v = other as _$OrderFilterSell;
  }

  @override
  void update(void Function(OrderFilterSellBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderFilterSell build() => _build();

  _$OrderFilterSell _build() {
    final _$result = _$v ??
        _$OrderFilterSell._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'OrderFilterSell', 'atType'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
