// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_exchange_history.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderExchangeHistoryTypeEnum _$orderExchangeHistoryTypeEnum_CANCEL =
    const OrderExchangeHistoryTypeEnum._('CANCEL');
const OrderExchangeHistoryTypeEnum
    _$orderExchangeHistoryTypeEnum_ORDER_SIDE_MATCH =
    const OrderExchangeHistoryTypeEnum._('ORDER_SIDE_MATCH');

OrderExchangeHistoryTypeEnum _$orderExchangeHistoryTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'CANCEL':
      return _$orderExchangeHistoryTypeEnum_CANCEL;
    case 'ORDER_SIDE_MATCH':
      return _$orderExchangeHistoryTypeEnum_ORDER_SIDE_MATCH;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderExchangeHistoryTypeEnum>
    _$orderExchangeHistoryTypeEnumValues =
    BuiltSet<OrderExchangeHistoryTypeEnum>(const <OrderExchangeHistoryTypeEnum>[
  _$orderExchangeHistoryTypeEnum_CANCEL,
  _$orderExchangeHistoryTypeEnum_ORDER_SIDE_MATCH,
]);

Serializer<OrderExchangeHistoryTypeEnum>
    _$orderExchangeHistoryTypeEnumSerializer =
    _$OrderExchangeHistoryTypeEnumSerializer();

class _$OrderExchangeHistoryTypeEnumSerializer
    implements PrimitiveSerializer<OrderExchangeHistoryTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'CANCEL': 'CANCEL',
    'ORDER_SIDE_MATCH': 'ORDER_SIDE_MATCH',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'CANCEL': 'CANCEL',
    'ORDER_SIDE_MATCH': 'ORDER_SIDE_MATCH',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderExchangeHistoryTypeEnum];
  @override
  final String wireName = 'OrderExchangeHistoryTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderExchangeHistoryTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderExchangeHistoryTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderExchangeHistoryTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderExchangeHistory extends OrderExchangeHistory {
  @override
  final DateTime date;
  @override
  final Asset? take;
  @override
  final String? maker;
  @override
  final Asset? make;
  @override
  final String hash;
  @override
  final OneOf oneOf;

  factory _$OrderExchangeHistory(
          [void Function(OrderExchangeHistoryBuilder)? updates]) =>
      (OrderExchangeHistoryBuilder()..update(updates))._build();

  _$OrderExchangeHistory._(
      {required this.date,
      this.take,
      this.maker,
      this.make,
      required this.hash,
      required this.oneOf})
      : super._();
  @override
  OrderExchangeHistory rebuild(
          void Function(OrderExchangeHistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderExchangeHistoryBuilder toBuilder() =>
      OrderExchangeHistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderExchangeHistory &&
        date == other.date &&
        take == other.take &&
        maker == other.maker &&
        make == other.make &&
        hash == other.hash &&
        oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderExchangeHistory')
          ..add('date', date)
          ..add('take', take)
          ..add('maker', maker)
          ..add('make', make)
          ..add('hash', hash)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OrderExchangeHistoryBuilder
    implements Builder<OrderExchangeHistory, OrderExchangeHistoryBuilder> {
  _$OrderExchangeHistory? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  AssetBuilder? _take;
  AssetBuilder get take => _$this._take ??= AssetBuilder();
  set take(AssetBuilder? take) => _$this._take = take;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  AssetBuilder? _make;
  AssetBuilder get make => _$this._make ??= AssetBuilder();
  set make(AssetBuilder? make) => _$this._make = make;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OrderExchangeHistoryBuilder() {
    OrderExchangeHistory._defaults(this);
  }

  OrderExchangeHistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _take = $v.take?.toBuilder();
      _maker = $v.maker;
      _make = $v.make?.toBuilder();
      _hash = $v.hash;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderExchangeHistory other) {
    _$v = other as _$OrderExchangeHistory;
  }

  @override
  void update(void Function(OrderExchangeHistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderExchangeHistory build() => _build();

  _$OrderExchangeHistory _build() {
    _$OrderExchangeHistory _$result;
    try {
      _$result = _$v ??
          _$OrderExchangeHistory._(
            date: BuiltValueNullFieldError.checkNotNull(
                date, r'OrderExchangeHistory', 'date'),
            take: _take?.build(),
            maker: maker,
            make: _make?.build(),
            hash: BuiltValueNullFieldError.checkNotNull(
                hash, r'OrderExchangeHistory', 'hash'),
            oneOf: BuiltValueNullFieldError.checkNotNull(
                oneOf, r'OrderExchangeHistory', 'oneOf'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'take';
        _take?.build();

        _$failedField = 'make';
        _make?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderExchangeHistory', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
