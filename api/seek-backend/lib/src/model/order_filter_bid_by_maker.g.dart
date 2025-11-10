// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_filter_bid_by_maker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderFilterBidByMakerAtTypeEnum
    _$orderFilterBidByMakerAtTypeEnum_bidByMaker =
    const OrderFilterBidByMakerAtTypeEnum._('bidByMaker');

OrderFilterBidByMakerAtTypeEnum _$orderFilterBidByMakerAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'bidByMaker':
      return _$orderFilterBidByMakerAtTypeEnum_bidByMaker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFilterBidByMakerAtTypeEnum>
    _$orderFilterBidByMakerAtTypeEnumValues = BuiltSet<
        OrderFilterBidByMakerAtTypeEnum>(const <OrderFilterBidByMakerAtTypeEnum>[
  _$orderFilterBidByMakerAtTypeEnum_bidByMaker,
]);

Serializer<OrderFilterBidByMakerAtTypeEnum>
    _$orderFilterBidByMakerAtTypeEnumSerializer =
    _$OrderFilterBidByMakerAtTypeEnumSerializer();

class _$OrderFilterBidByMakerAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderFilterBidByMakerAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bidByMaker': 'bid_by_maker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bid_by_maker': 'bidByMaker',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFilterBidByMakerAtTypeEnum];
  @override
  final String wireName = 'OrderFilterBidByMakerAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OrderFilterBidByMakerAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFilterBidByMakerAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFilterBidByMakerAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderFilterBidByMaker extends OrderFilterBidByMaker {
  @override
  final OrderFilterBidByMakerAtTypeEnum atType;
  @override
  final String maker;

  factory _$OrderFilterBidByMaker(
          [void Function(OrderFilterBidByMakerBuilder)? updates]) =>
      (OrderFilterBidByMakerBuilder()..update(updates))._build();

  _$OrderFilterBidByMaker._({required this.atType, required this.maker})
      : super._();
  @override
  OrderFilterBidByMaker rebuild(
          void Function(OrderFilterBidByMakerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderFilterBidByMakerBuilder toBuilder() =>
      OrderFilterBidByMakerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderFilterBidByMaker &&
        atType == other.atType &&
        maker == other.maker;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderFilterBidByMaker')
          ..add('atType', atType)
          ..add('maker', maker))
        .toString();
  }
}

class OrderFilterBidByMakerBuilder
    implements Builder<OrderFilterBidByMaker, OrderFilterBidByMakerBuilder> {
  _$OrderFilterBidByMaker? _$v;

  OrderFilterBidByMakerAtTypeEnum? _atType;
  OrderFilterBidByMakerAtTypeEnum? get atType => _$this._atType;
  set atType(OrderFilterBidByMakerAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  OrderFilterBidByMakerBuilder() {
    OrderFilterBidByMaker._defaults(this);
  }

  OrderFilterBidByMakerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _maker = $v.maker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderFilterBidByMaker other) {
    _$v = other as _$OrderFilterBidByMaker;
  }

  @override
  void update(void Function(OrderFilterBidByMakerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderFilterBidByMaker build() => _build();

  _$OrderFilterBidByMaker _build() {
    final _$result = _$v ??
        _$OrderFilterBidByMaker._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'OrderFilterBidByMaker', 'atType'),
          maker: BuiltValueNullFieldError.checkNotNull(
              maker, r'OrderFilterBidByMaker', 'maker'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
