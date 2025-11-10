// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_filter_sell_by_maker.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderFilterSellByMakerAtTypeEnum
    _$orderFilterSellByMakerAtTypeEnum_sellByMaker =
    const OrderFilterSellByMakerAtTypeEnum._('sellByMaker');

OrderFilterSellByMakerAtTypeEnum _$orderFilterSellByMakerAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'sellByMaker':
      return _$orderFilterSellByMakerAtTypeEnum_sellByMaker;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderFilterSellByMakerAtTypeEnum>
    _$orderFilterSellByMakerAtTypeEnumValues = BuiltSet<
        OrderFilterSellByMakerAtTypeEnum>(const <OrderFilterSellByMakerAtTypeEnum>[
  _$orderFilterSellByMakerAtTypeEnum_sellByMaker,
]);

Serializer<OrderFilterSellByMakerAtTypeEnum>
    _$orderFilterSellByMakerAtTypeEnumSerializer =
    _$OrderFilterSellByMakerAtTypeEnumSerializer();

class _$OrderFilterSellByMakerAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderFilterSellByMakerAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'sellByMaker': 'sell_by_maker',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'sell_by_maker': 'sellByMaker',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderFilterSellByMakerAtTypeEnum];
  @override
  final String wireName = 'OrderFilterSellByMakerAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OrderFilterSellByMakerAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderFilterSellByMakerAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderFilterSellByMakerAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderFilterSellByMaker extends OrderFilterSellByMaker {
  @override
  final OrderFilterSellByMakerAtTypeEnum atType;
  @override
  final String maker;

  factory _$OrderFilterSellByMaker(
          [void Function(OrderFilterSellByMakerBuilder)? updates]) =>
      (OrderFilterSellByMakerBuilder()..update(updates))._build();

  _$OrderFilterSellByMaker._({required this.atType, required this.maker})
      : super._();
  @override
  OrderFilterSellByMaker rebuild(
          void Function(OrderFilterSellByMakerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderFilterSellByMakerBuilder toBuilder() =>
      OrderFilterSellByMakerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderFilterSellByMaker &&
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
    return (newBuiltValueToStringHelper(r'OrderFilterSellByMaker')
          ..add('atType', atType)
          ..add('maker', maker))
        .toString();
  }
}

class OrderFilterSellByMakerBuilder
    implements Builder<OrderFilterSellByMaker, OrderFilterSellByMakerBuilder> {
  _$OrderFilterSellByMaker? _$v;

  OrderFilterSellByMakerAtTypeEnum? _atType;
  OrderFilterSellByMakerAtTypeEnum? get atType => _$this._atType;
  set atType(OrderFilterSellByMakerAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  OrderFilterSellByMakerBuilder() {
    OrderFilterSellByMaker._defaults(this);
  }

  OrderFilterSellByMakerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _maker = $v.maker;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderFilterSellByMaker other) {
    _$v = other as _$OrderFilterSellByMaker;
  }

  @override
  void update(void Function(OrderFilterSellByMakerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderFilterSellByMaker build() => _build();

  _$OrderFilterSellByMaker _build() {
    final _$result = _$v ??
        _$OrderFilterSellByMaker._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'OrderFilterSellByMaker', 'atType'),
          maker: BuiltValueNullFieldError.checkNotNull(
              maker, r'OrderFilterSellByMaker', 'maker'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
