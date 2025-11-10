// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_bid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderBidTypeEnum _$orderBidTypeEnum_rARIBLEV1 =
    const OrderBidTypeEnum._('rARIBLEV1');
const OrderBidTypeEnum _$orderBidTypeEnum_rARIBLEV2 =
    const OrderBidTypeEnum._('rARIBLEV2');
const OrderBidTypeEnum _$orderBidTypeEnum_oPENSEAV1 =
    const OrderBidTypeEnum._('oPENSEAV1');

OrderBidTypeEnum _$orderBidTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV1':
      return _$orderBidTypeEnum_rARIBLEV1;
    case 'rARIBLEV2':
      return _$orderBidTypeEnum_rARIBLEV2;
    case 'oPENSEAV1':
      return _$orderBidTypeEnum_oPENSEAV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderBidTypeEnum> _$orderBidTypeEnumValues =
    BuiltSet<OrderBidTypeEnum>(const <OrderBidTypeEnum>[
  _$orderBidTypeEnum_rARIBLEV1,
  _$orderBidTypeEnum_rARIBLEV2,
  _$orderBidTypeEnum_oPENSEAV1,
]);

Serializer<OrderBidTypeEnum> _$orderBidTypeEnumSerializer =
    _$OrderBidTypeEnumSerializer();

class _$OrderBidTypeEnumSerializer
    implements PrimitiveSerializer<OrderBidTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV1': 'RARIBLE_V1',
    'rARIBLEV2': 'RARIBLE_V2',
    'oPENSEAV1': 'OPEN_SEA_V1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V1': 'rARIBLEV1',
    'RARIBLE_V2': 'rARIBLEV2',
    'OPEN_SEA_V1': 'oPENSEAV1',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderBidTypeEnum];
  @override
  final String wireName = 'OrderBidTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderBidTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderBidTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderBidTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderBid extends OrderBid {
  @override
  final String salt;
  @override
  final String? signature;
  @override
  final String? makeBalance;
  @override
  final String? takePriceUsd;
  @override
  final String maker;
  @override
  final String fill;
  @override
  final Asset take;
  @override
  final DateTime createdAt;
  @override
  final String makeStock;
  @override
  final bool cancelled;
  @override
  final String? taker;
  @override
  final String? makePriceUsd;
  @override
  final Asset make;
  @override
  final String orderHash;
  @override
  final OrderBidStatus status;
  @override
  final OneOf oneOf;

  factory _$OrderBid([void Function(OrderBidBuilder)? updates]) =>
      (OrderBidBuilder()..update(updates))._build();

  _$OrderBid._(
      {required this.salt,
      this.signature,
      this.makeBalance,
      this.takePriceUsd,
      required this.maker,
      required this.fill,
      required this.take,
      required this.createdAt,
      required this.makeStock,
      required this.cancelled,
      this.taker,
      this.makePriceUsd,
      required this.make,
      required this.orderHash,
      required this.status,
      required this.oneOf})
      : super._();
  @override
  OrderBid rebuild(void Function(OrderBidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBidBuilder toBuilder() => OrderBidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderBid &&
        salt == other.salt &&
        signature == other.signature &&
        makeBalance == other.makeBalance &&
        takePriceUsd == other.takePriceUsd &&
        maker == other.maker &&
        fill == other.fill &&
        take == other.take &&
        createdAt == other.createdAt &&
        makeStock == other.makeStock &&
        cancelled == other.cancelled &&
        taker == other.taker &&
        makePriceUsd == other.makePriceUsd &&
        make == other.make &&
        orderHash == other.orderHash &&
        status == other.status &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, salt.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, makeBalance.hashCode);
    _$hash = $jc(_$hash, takePriceUsd.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, fill.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, makeStock.hashCode);
    _$hash = $jc(_$hash, cancelled.hashCode);
    _$hash = $jc(_$hash, taker.hashCode);
    _$hash = $jc(_$hash, makePriceUsd.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, orderHash.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderBid')
          ..add('salt', salt)
          ..add('signature', signature)
          ..add('makeBalance', makeBalance)
          ..add('takePriceUsd', takePriceUsd)
          ..add('maker', maker)
          ..add('fill', fill)
          ..add('take', take)
          ..add('createdAt', createdAt)
          ..add('makeStock', makeStock)
          ..add('cancelled', cancelled)
          ..add('taker', taker)
          ..add('makePriceUsd', makePriceUsd)
          ..add('make', make)
          ..add('orderHash', orderHash)
          ..add('status', status)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderBidBuilder implements Builder<OrderBid, OrderBidBuilder> {
  _$OrderBid? _$v;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  String? _makeBalance;
  String? get makeBalance => _$this._makeBalance;
  set makeBalance(String? makeBalance) => _$this._makeBalance = makeBalance;

  String? _takePriceUsd;
  String? get takePriceUsd => _$this._takePriceUsd;
  set takePriceUsd(String? takePriceUsd) => _$this._takePriceUsd = takePriceUsd;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  String? _fill;
  String? get fill => _$this._fill;
  set fill(String? fill) => _$this._fill = fill;

  AssetBuilder? _take;
  AssetBuilder get take => _$this._take ??= AssetBuilder();
  set take(AssetBuilder? take) => _$this._take = take;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _makeStock;
  String? get makeStock => _$this._makeStock;
  set makeStock(String? makeStock) => _$this._makeStock = makeStock;

  bool? _cancelled;
  bool? get cancelled => _$this._cancelled;
  set cancelled(bool? cancelled) => _$this._cancelled = cancelled;

  String? _taker;
  String? get taker => _$this._taker;
  set taker(String? taker) => _$this._taker = taker;

  String? _makePriceUsd;
  String? get makePriceUsd => _$this._makePriceUsd;
  set makePriceUsd(String? makePriceUsd) => _$this._makePriceUsd = makePriceUsd;

  AssetBuilder? _make;
  AssetBuilder get make => _$this._make ??= AssetBuilder();
  set make(AssetBuilder? make) => _$this._make = make;

  String? _orderHash;
  String? get orderHash => _$this._orderHash;
  set orderHash(String? orderHash) => _$this._orderHash = orderHash;

  OrderBidStatus? _status;
  OrderBidStatus? get status => _$this._status;
  set status(OrderBidStatus? status) => _$this._status = status;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderBidBuilder() {
    OrderBid._defaults(this);
  }

  OrderBidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salt = $v.salt;
      _signature = $v.signature;
      _makeBalance = $v.makeBalance;
      _takePriceUsd = $v.takePriceUsd;
      _maker = $v.maker;
      _fill = $v.fill;
      _take = $v.take.toBuilder();
      _createdAt = $v.createdAt;
      _makeStock = $v.makeStock;
      _cancelled = $v.cancelled;
      _taker = $v.taker;
      _makePriceUsd = $v.makePriceUsd;
      _make = $v.make.toBuilder();
      _orderHash = $v.orderHash;
      _status = $v.status;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderBid other) {
    _$v = other as _$OrderBid;
  }

  @override
  void update(void Function(OrderBidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderBid build() => _build();

  _$OrderBid _build() {
    _$OrderBid _$result;
    try {
      _$result = _$v ??
          _$OrderBid._(
            salt: BuiltValueNullFieldError.checkNotNull(
                salt, r'OrderBid', 'salt'),
            signature: signature,
            makeBalance: makeBalance,
            takePriceUsd: takePriceUsd,
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'OrderBid', 'maker'),
            fill: BuiltValueNullFieldError.checkNotNull(
                fill, r'OrderBid', 'fill'),
            take: take.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'OrderBid', 'createdAt'),
            makeStock: BuiltValueNullFieldError.checkNotNull(
                makeStock, r'OrderBid', 'makeStock'),
            cancelled: BuiltValueNullFieldError.checkNotNull(
                cancelled, r'OrderBid', 'cancelled'),
            taker: taker,
            makePriceUsd: makePriceUsd,
            make: make.build(),
            orderHash: BuiltValueNullFieldError.checkNotNull(
                orderHash, r'OrderBid', 'orderHash'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'OrderBid', 'status'),
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'OrderBid', 'oneOf'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'take';
        take.build();

        _$failedField = 'make';
        make.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderBid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
