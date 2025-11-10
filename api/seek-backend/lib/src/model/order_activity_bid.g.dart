// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity_bid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivityBidAtTypeEnum _$orderActivityBidAtTypeEnum_bid =
    const OrderActivityBidAtTypeEnum._('bid');

OrderActivityBidAtTypeEnum _$orderActivityBidAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'bid':
      return _$orderActivityBidAtTypeEnum_bid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityBidAtTypeEnum> _$orderActivityBidAtTypeEnumValues =
    BuiltSet<OrderActivityBidAtTypeEnum>(const <OrderActivityBidAtTypeEnum>[
  _$orderActivityBidAtTypeEnum_bid,
]);

Serializer<OrderActivityBidAtTypeEnum> _$orderActivityBidAtTypeEnumSerializer =
    _$OrderActivityBidAtTypeEnumSerializer();

class _$OrderActivityBidAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityBidAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'bid': 'bid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'bid': 'bid',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityBidAtTypeEnum];
  @override
  final String wireName = 'OrderActivityBidAtTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderActivityBidAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityBidAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityBidAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityBid extends OrderActivityBid {
  @override
  final OrderActivityBidAtTypeEnum atType;
  @override
  final String hash;
  @override
  final String maker;
  @override
  final Asset make;
  @override
  final Asset take;
  @override
  final String price;
  @override
  final String? priceUsd;

  factory _$OrderActivityBid(
          [void Function(OrderActivityBidBuilder)? updates]) =>
      (OrderActivityBidBuilder()..update(updates))._build();

  _$OrderActivityBid._(
      {required this.atType,
      required this.hash,
      required this.maker,
      required this.make,
      required this.take,
      required this.price,
      this.priceUsd})
      : super._();
  @override
  OrderActivityBid rebuild(void Function(OrderActivityBidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityBidBuilder toBuilder() =>
      OrderActivityBidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivityBid &&
        atType == other.atType &&
        hash == other.hash &&
        maker == other.maker &&
        make == other.make &&
        take == other.take &&
        price == other.price &&
        priceUsd == other.priceUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, priceUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivityBid')
          ..add('atType', atType)
          ..add('hash', hash)
          ..add('maker', maker)
          ..add('make', make)
          ..add('take', take)
          ..add('price', price)
          ..add('priceUsd', priceUsd))
        .toString();
  }
}

class OrderActivityBidBuilder
    implements Builder<OrderActivityBid, OrderActivityBidBuilder> {
  _$OrderActivityBid? _$v;

  OrderActivityBidAtTypeEnum? _atType;
  OrderActivityBidAtTypeEnum? get atType => _$this._atType;
  set atType(OrderActivityBidAtTypeEnum? atType) => _$this._atType = atType;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  AssetBuilder? _make;
  AssetBuilder get make => _$this._make ??= AssetBuilder();
  set make(AssetBuilder? make) => _$this._make = make;

  AssetBuilder? _take;
  AssetBuilder get take => _$this._take ??= AssetBuilder();
  set take(AssetBuilder? take) => _$this._take = take;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _priceUsd;
  String? get priceUsd => _$this._priceUsd;
  set priceUsd(String? priceUsd) => _$this._priceUsd = priceUsd;

  OrderActivityBidBuilder() {
    OrderActivityBid._defaults(this);
  }

  OrderActivityBidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _hash = $v.hash;
      _maker = $v.maker;
      _make = $v.make.toBuilder();
      _take = $v.take.toBuilder();
      _price = $v.price;
      _priceUsd = $v.priceUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivityBid other) {
    _$v = other as _$OrderActivityBid;
  }

  @override
  void update(void Function(OrderActivityBidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivityBid build() => _build();

  _$OrderActivityBid _build() {
    _$OrderActivityBid _$result;
    try {
      _$result = _$v ??
          _$OrderActivityBid._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'OrderActivityBid', 'atType'),
            hash: BuiltValueNullFieldError.checkNotNull(
                hash, r'OrderActivityBid', 'hash'),
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'OrderActivityBid', 'maker'),
            make: make.build(),
            take: take.build(),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'OrderActivityBid', 'price'),
            priceUsd: priceUsd,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'make';
        make.build();
        _$failedField = 'take';
        take.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderActivityBid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
