// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderTypeEnum _$orderTypeEnum_rARIBLEV1 =
    const OrderTypeEnum._('rARIBLEV1');
const OrderTypeEnum _$orderTypeEnum_rARIBLEV2 =
    const OrderTypeEnum._('rARIBLEV2');
const OrderTypeEnum _$orderTypeEnum_oPENSEAV1 =
    const OrderTypeEnum._('oPENSEAV1');

OrderTypeEnum _$orderTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV1':
      return _$orderTypeEnum_rARIBLEV1;
    case 'rARIBLEV2':
      return _$orderTypeEnum_rARIBLEV2;
    case 'oPENSEAV1':
      return _$orderTypeEnum_oPENSEAV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderTypeEnum> _$orderTypeEnumValues =
    BuiltSet<OrderTypeEnum>(const <OrderTypeEnum>[
  _$orderTypeEnum_rARIBLEV1,
  _$orderTypeEnum_rARIBLEV2,
  _$orderTypeEnum_oPENSEAV1,
]);

Serializer<OrderTypeEnum> _$orderTypeEnumSerializer =
    _$OrderTypeEnumSerializer();

class _$OrderTypeEnumSerializer implements PrimitiveSerializer<OrderTypeEnum> {
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
  final Iterable<Type> types = const <Type>[OrderTypeEnum];
  @override
  final String wireName = 'OrderTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Order extends Order {
  @override
  final String salt;
  @override
  final String? signature;
  @override
  final BuiltList<OrderExchangeHistory>? pending;
  @override
  final int? start;
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
  final int? end;
  @override
  final DateTime lastUpdateAt;
  @override
  final String? taker;
  @override
  final String? makePriceUsd;
  @override
  final Asset make;
  @override
  final String hash;
  @override
  final BuiltList<OrderPriceHistoryRecord>? priceHistory;
  @override
  final OneOf oneOf;

  factory _$Order([void Function(OrderBuilder)? updates]) =>
      (OrderBuilder()..update(updates))._build();

  _$Order._(
      {required this.salt,
      this.signature,
      this.pending,
      this.start,
      this.makeBalance,
      this.takePriceUsd,
      required this.maker,
      required this.fill,
      required this.take,
      required this.createdAt,
      required this.makeStock,
      required this.cancelled,
      this.end,
      required this.lastUpdateAt,
      this.taker,
      this.makePriceUsd,
      required this.make,
      required this.hash,
      this.priceHistory,
      required this.oneOf})
      : super._();
  @override
  Order rebuild(void Function(OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderBuilder toBuilder() => OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Order &&
        salt == other.salt &&
        signature == other.signature &&
        pending == other.pending &&
        start == other.start &&
        makeBalance == other.makeBalance &&
        takePriceUsd == other.takePriceUsd &&
        maker == other.maker &&
        fill == other.fill &&
        take == other.take &&
        createdAt == other.createdAt &&
        makeStock == other.makeStock &&
        cancelled == other.cancelled &&
        end == other.end &&
        lastUpdateAt == other.lastUpdateAt &&
        taker == other.taker &&
        makePriceUsd == other.makePriceUsd &&
        make == other.make &&
        hash == other.hash &&
        priceHistory == other.priceHistory &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, salt.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jc(_$hash, pending.hashCode);
    _$hash = $jc(_$hash, start.hashCode);
    _$hash = $jc(_$hash, makeBalance.hashCode);
    _$hash = $jc(_$hash, takePriceUsd.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, fill.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, makeStock.hashCode);
    _$hash = $jc(_$hash, cancelled.hashCode);
    _$hash = $jc(_$hash, end.hashCode);
    _$hash = $jc(_$hash, lastUpdateAt.hashCode);
    _$hash = $jc(_$hash, taker.hashCode);
    _$hash = $jc(_$hash, makePriceUsd.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jc(_$hash, priceHistory.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Order')
          ..add('salt', salt)
          ..add('signature', signature)
          ..add('pending', pending)
          ..add('start', start)
          ..add('makeBalance', makeBalance)
          ..add('takePriceUsd', takePriceUsd)
          ..add('maker', maker)
          ..add('fill', fill)
          ..add('take', take)
          ..add('createdAt', createdAt)
          ..add('makeStock', makeStock)
          ..add('cancelled', cancelled)
          ..add('end', end)
          ..add('lastUpdateAt', lastUpdateAt)
          ..add('taker', taker)
          ..add('makePriceUsd', makePriceUsd)
          ..add('make', make)
          ..add('hash', hash)
          ..add('priceHistory', priceHistory)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderBuilder implements Builder<Order, OrderBuilder> {
  _$Order? _$v;

  String? _salt;
  String? get salt => _$this._salt;
  set salt(String? salt) => _$this._salt = salt;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  ListBuilder<OrderExchangeHistory>? _pending;
  ListBuilder<OrderExchangeHistory> get pending =>
      _$this._pending ??= ListBuilder<OrderExchangeHistory>();
  set pending(ListBuilder<OrderExchangeHistory>? pending) =>
      _$this._pending = pending;

  int? _start;
  int? get start => _$this._start;
  set start(int? start) => _$this._start = start;

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

  int? _end;
  int? get end => _$this._end;
  set end(int? end) => _$this._end = end;

  DateTime? _lastUpdateAt;
  DateTime? get lastUpdateAt => _$this._lastUpdateAt;
  set lastUpdateAt(DateTime? lastUpdateAt) =>
      _$this._lastUpdateAt = lastUpdateAt;

  String? _taker;
  String? get taker => _$this._taker;
  set taker(String? taker) => _$this._taker = taker;

  String? _makePriceUsd;
  String? get makePriceUsd => _$this._makePriceUsd;
  set makePriceUsd(String? makePriceUsd) => _$this._makePriceUsd = makePriceUsd;

  AssetBuilder? _make;
  AssetBuilder get make => _$this._make ??= AssetBuilder();
  set make(AssetBuilder? make) => _$this._make = make;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  ListBuilder<OrderPriceHistoryRecord>? _priceHistory;
  ListBuilder<OrderPriceHistoryRecord> get priceHistory =>
      _$this._priceHistory ??= ListBuilder<OrderPriceHistoryRecord>();
  set priceHistory(ListBuilder<OrderPriceHistoryRecord>? priceHistory) =>
      _$this._priceHistory = priceHistory;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderBuilder() {
    Order._defaults(this);
  }

  OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _salt = $v.salt;
      _signature = $v.signature;
      _pending = $v.pending?.toBuilder();
      _start = $v.start;
      _makeBalance = $v.makeBalance;
      _takePriceUsd = $v.takePriceUsd;
      _maker = $v.maker;
      _fill = $v.fill;
      _take = $v.take.toBuilder();
      _createdAt = $v.createdAt;
      _makeStock = $v.makeStock;
      _cancelled = $v.cancelled;
      _end = $v.end;
      _lastUpdateAt = $v.lastUpdateAt;
      _taker = $v.taker;
      _makePriceUsd = $v.makePriceUsd;
      _make = $v.make.toBuilder();
      _hash = $v.hash;
      _priceHistory = $v.priceHistory?.toBuilder();
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Order other) {
    _$v = other as _$Order;
  }

  @override
  void update(void Function(OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Order build() => _build();

  _$Order _build() {
    _$Order _$result;
    try {
      _$result = _$v ??
          _$Order._(
            salt: BuiltValueNullFieldError.checkNotNull(salt, r'Order', 'salt'),
            signature: signature,
            pending: _pending?.build(),
            start: start,
            makeBalance: makeBalance,
            takePriceUsd: takePriceUsd,
            maker:
                BuiltValueNullFieldError.checkNotNull(maker, r'Order', 'maker'),
            fill: BuiltValueNullFieldError.checkNotNull(fill, r'Order', 'fill'),
            take: take.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Order', 'createdAt'),
            makeStock: BuiltValueNullFieldError.checkNotNull(
                makeStock, r'Order', 'makeStock'),
            cancelled: BuiltValueNullFieldError.checkNotNull(
                cancelled, r'Order', 'cancelled'),
            end: end,
            lastUpdateAt: BuiltValueNullFieldError.checkNotNull(
                lastUpdateAt, r'Order', 'lastUpdateAt'),
            taker: taker,
            makePriceUsd: makePriceUsd,
            make: make.build(),
            hash: BuiltValueNullFieldError.checkNotNull(hash, r'Order', 'hash'),
            priceHistory: _priceHistory?.build(),
            oneOf:
                BuiltValueNullFieldError.checkNotNull(oneOf, r'Order', 'oneOf'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pending';
        _pending?.build();

        _$failedField = 'take';
        take.build();

        _$failedField = 'make';
        make.build();

        _$failedField = 'priceHistory';
        _priceHistory?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
