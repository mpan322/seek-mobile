// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_side_match.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderSideMatchTypeEnum _$orderSideMatchTypeEnum_ORDER_SIDE_MATCH =
    const OrderSideMatchTypeEnum._('ORDER_SIDE_MATCH');

OrderSideMatchTypeEnum _$orderSideMatchTypeEnumValueOf(String name) {
  switch (name) {
    case 'ORDER_SIDE_MATCH':
      return _$orderSideMatchTypeEnum_ORDER_SIDE_MATCH;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderSideMatchTypeEnum> _$orderSideMatchTypeEnumValues =
    BuiltSet<OrderSideMatchTypeEnum>(const <OrderSideMatchTypeEnum>[
  _$orderSideMatchTypeEnum_ORDER_SIDE_MATCH,
]);

Serializer<OrderSideMatchTypeEnum> _$orderSideMatchTypeEnumSerializer =
    _$OrderSideMatchTypeEnumSerializer();

class _$OrderSideMatchTypeEnumSerializer
    implements PrimitiveSerializer<OrderSideMatchTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'ORDER_SIDE_MATCH': 'ORDER_SIDE_MATCH',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'ORDER_SIDE_MATCH': 'ORDER_SIDE_MATCH',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderSideMatchTypeEnum];
  @override
  final String wireName = 'OrderSideMatchTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderSideMatchTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderSideMatchTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderSideMatchTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderSideMatch extends OrderSideMatch {
  @override
  final OrderSideMatchTypeEnum type;
  @override
  final String fill;
  @override
  final OrderSide? side;
  @override
  final String? taker;
  @override
  final String? counterHash;
  @override
  final String? makeUsd;
  @override
  final String? takeUsd;
  @override
  final String? makePriceUsd;
  @override
  final String? takePriceUsd;

  factory _$OrderSideMatch([void Function(OrderSideMatchBuilder)? updates]) =>
      (OrderSideMatchBuilder()..update(updates))._build();

  _$OrderSideMatch._(
      {required this.type,
      required this.fill,
      this.side,
      this.taker,
      this.counterHash,
      this.makeUsd,
      this.takeUsd,
      this.makePriceUsd,
      this.takePriceUsd})
      : super._();
  @override
  OrderSideMatch rebuild(void Function(OrderSideMatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderSideMatchBuilder toBuilder() => OrderSideMatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderSideMatch &&
        type == other.type &&
        fill == other.fill &&
        side == other.side &&
        taker == other.taker &&
        counterHash == other.counterHash &&
        makeUsd == other.makeUsd &&
        takeUsd == other.takeUsd &&
        makePriceUsd == other.makePriceUsd &&
        takePriceUsd == other.takePriceUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, fill.hashCode);
    _$hash = $jc(_$hash, side.hashCode);
    _$hash = $jc(_$hash, taker.hashCode);
    _$hash = $jc(_$hash, counterHash.hashCode);
    _$hash = $jc(_$hash, makeUsd.hashCode);
    _$hash = $jc(_$hash, takeUsd.hashCode);
    _$hash = $jc(_$hash, makePriceUsd.hashCode);
    _$hash = $jc(_$hash, takePriceUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderSideMatch')
          ..add('type', type)
          ..add('fill', fill)
          ..add('side', side)
          ..add('taker', taker)
          ..add('counterHash', counterHash)
          ..add('makeUsd', makeUsd)
          ..add('takeUsd', takeUsd)
          ..add('makePriceUsd', makePriceUsd)
          ..add('takePriceUsd', takePriceUsd))
        .toString();
  }
}

class OrderSideMatchBuilder
    implements Builder<OrderSideMatch, OrderSideMatchBuilder> {
  _$OrderSideMatch? _$v;

  OrderSideMatchTypeEnum? _type;
  OrderSideMatchTypeEnum? get type => _$this._type;
  set type(OrderSideMatchTypeEnum? type) => _$this._type = type;

  String? _fill;
  String? get fill => _$this._fill;
  set fill(String? fill) => _$this._fill = fill;

  OrderSide? _side;
  OrderSide? get side => _$this._side;
  set side(OrderSide? side) => _$this._side = side;

  String? _taker;
  String? get taker => _$this._taker;
  set taker(String? taker) => _$this._taker = taker;

  String? _counterHash;
  String? get counterHash => _$this._counterHash;
  set counterHash(String? counterHash) => _$this._counterHash = counterHash;

  String? _makeUsd;
  String? get makeUsd => _$this._makeUsd;
  set makeUsd(String? makeUsd) => _$this._makeUsd = makeUsd;

  String? _takeUsd;
  String? get takeUsd => _$this._takeUsd;
  set takeUsd(String? takeUsd) => _$this._takeUsd = takeUsd;

  String? _makePriceUsd;
  String? get makePriceUsd => _$this._makePriceUsd;
  set makePriceUsd(String? makePriceUsd) => _$this._makePriceUsd = makePriceUsd;

  String? _takePriceUsd;
  String? get takePriceUsd => _$this._takePriceUsd;
  set takePriceUsd(String? takePriceUsd) => _$this._takePriceUsd = takePriceUsd;

  OrderSideMatchBuilder() {
    OrderSideMatch._defaults(this);
  }

  OrderSideMatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _fill = $v.fill;
      _side = $v.side;
      _taker = $v.taker;
      _counterHash = $v.counterHash;
      _makeUsd = $v.makeUsd;
      _takeUsd = $v.takeUsd;
      _makePriceUsd = $v.makePriceUsd;
      _takePriceUsd = $v.takePriceUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderSideMatch other) {
    _$v = other as _$OrderSideMatch;
  }

  @override
  void update(void Function(OrderSideMatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderSideMatch build() => _build();

  _$OrderSideMatch _build() {
    final _$result = _$v ??
        _$OrderSideMatch._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'OrderSideMatch', 'type'),
          fill: BuiltValueNullFieldError.checkNotNull(
              fill, r'OrderSideMatch', 'fill'),
          side: side,
          taker: taker,
          counterHash: counterHash,
          makeUsd: makeUsd,
          takeUsd: takeUsd,
          makePriceUsd: makePriceUsd,
          takePriceUsd: takePriceUsd,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
