// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity_match.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivityMatchAtTypeEnum _$orderActivityMatchAtTypeEnum_match =
    const OrderActivityMatchAtTypeEnum._('match');

OrderActivityMatchAtTypeEnum _$orderActivityMatchAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'match':
      return _$orderActivityMatchAtTypeEnum_match;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityMatchAtTypeEnum>
    _$orderActivityMatchAtTypeEnumValues =
    BuiltSet<OrderActivityMatchAtTypeEnum>(const <OrderActivityMatchAtTypeEnum>[
  _$orderActivityMatchAtTypeEnum_match,
]);

Serializer<OrderActivityMatchAtTypeEnum>
    _$orderActivityMatchAtTypeEnumSerializer =
    _$OrderActivityMatchAtTypeEnumSerializer();

class _$OrderActivityMatchAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityMatchAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'match': 'match',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'match': 'match',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityMatchAtTypeEnum];
  @override
  final String wireName = 'OrderActivityMatchAtTypeEnum';

  @override
  Object serialize(Serializers serializers, OrderActivityMatchAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityMatchAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityMatchAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityMatch extends OrderActivityMatch {
  @override
  final OrderActivityMatchAtTypeEnum atType;
  @override
  final OrderActivityMatchSide left;
  @override
  final OrderActivityMatchSide right;
  @override
  final String price;
  @override
  final String transactionHash;
  @override
  final String blockHash;
  @override
  final int blockNumber;
  @override
  final int logIndex;
  @override
  final String? priceUsd;

  factory _$OrderActivityMatch(
          [void Function(OrderActivityMatchBuilder)? updates]) =>
      (OrderActivityMatchBuilder()..update(updates))._build();

  _$OrderActivityMatch._(
      {required this.atType,
      required this.left,
      required this.right,
      required this.price,
      required this.transactionHash,
      required this.blockHash,
      required this.blockNumber,
      required this.logIndex,
      this.priceUsd})
      : super._();
  @override
  OrderActivityMatch rebuild(
          void Function(OrderActivityMatchBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityMatchBuilder toBuilder() =>
      OrderActivityMatchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivityMatch &&
        atType == other.atType &&
        left == other.left &&
        right == other.right &&
        price == other.price &&
        transactionHash == other.transactionHash &&
        blockHash == other.blockHash &&
        blockNumber == other.blockNumber &&
        logIndex == other.logIndex &&
        priceUsd == other.priceUsd;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, left.hashCode);
    _$hash = $jc(_$hash, right.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, transactionHash.hashCode);
    _$hash = $jc(_$hash, blockHash.hashCode);
    _$hash = $jc(_$hash, blockNumber.hashCode);
    _$hash = $jc(_$hash, logIndex.hashCode);
    _$hash = $jc(_$hash, priceUsd.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivityMatch')
          ..add('atType', atType)
          ..add('left', left)
          ..add('right', right)
          ..add('price', price)
          ..add('transactionHash', transactionHash)
          ..add('blockHash', blockHash)
          ..add('blockNumber', blockNumber)
          ..add('logIndex', logIndex)
          ..add('priceUsd', priceUsd))
        .toString();
  }
}

class OrderActivityMatchBuilder
    implements Builder<OrderActivityMatch, OrderActivityMatchBuilder> {
  _$OrderActivityMatch? _$v;

  OrderActivityMatchAtTypeEnum? _atType;
  OrderActivityMatchAtTypeEnum? get atType => _$this._atType;
  set atType(OrderActivityMatchAtTypeEnum? atType) => _$this._atType = atType;

  OrderActivityMatchSideBuilder? _left;
  OrderActivityMatchSideBuilder get left =>
      _$this._left ??= OrderActivityMatchSideBuilder();
  set left(OrderActivityMatchSideBuilder? left) => _$this._left = left;

  OrderActivityMatchSideBuilder? _right;
  OrderActivityMatchSideBuilder get right =>
      _$this._right ??= OrderActivityMatchSideBuilder();
  set right(OrderActivityMatchSideBuilder? right) => _$this._right = right;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _transactionHash;
  String? get transactionHash => _$this._transactionHash;
  set transactionHash(String? transactionHash) =>
      _$this._transactionHash = transactionHash;

  String? _blockHash;
  String? get blockHash => _$this._blockHash;
  set blockHash(String? blockHash) => _$this._blockHash = blockHash;

  int? _blockNumber;
  int? get blockNumber => _$this._blockNumber;
  set blockNumber(int? blockNumber) => _$this._blockNumber = blockNumber;

  int? _logIndex;
  int? get logIndex => _$this._logIndex;
  set logIndex(int? logIndex) => _$this._logIndex = logIndex;

  String? _priceUsd;
  String? get priceUsd => _$this._priceUsd;
  set priceUsd(String? priceUsd) => _$this._priceUsd = priceUsd;

  OrderActivityMatchBuilder() {
    OrderActivityMatch._defaults(this);
  }

  OrderActivityMatchBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _left = $v.left.toBuilder();
      _right = $v.right.toBuilder();
      _price = $v.price;
      _transactionHash = $v.transactionHash;
      _blockHash = $v.blockHash;
      _blockNumber = $v.blockNumber;
      _logIndex = $v.logIndex;
      _priceUsd = $v.priceUsd;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivityMatch other) {
    _$v = other as _$OrderActivityMatch;
  }

  @override
  void update(void Function(OrderActivityMatchBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivityMatch build() => _build();

  _$OrderActivityMatch _build() {
    _$OrderActivityMatch _$result;
    try {
      _$result = _$v ??
          _$OrderActivityMatch._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'OrderActivityMatch', 'atType'),
            left: left.build(),
            right: right.build(),
            price: BuiltValueNullFieldError.checkNotNull(
                price, r'OrderActivityMatch', 'price'),
            transactionHash: BuiltValueNullFieldError.checkNotNull(
                transactionHash, r'OrderActivityMatch', 'transactionHash'),
            blockHash: BuiltValueNullFieldError.checkNotNull(
                blockHash, r'OrderActivityMatch', 'blockHash'),
            blockNumber: BuiltValueNullFieldError.checkNotNull(
                blockNumber, r'OrderActivityMatch', 'blockNumber'),
            logIndex: BuiltValueNullFieldError.checkNotNull(
                logIndex, r'OrderActivityMatch', 'logIndex'),
            priceUsd: priceUsd,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'left';
        left.build();
        _$failedField = 'right';
        right.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderActivityMatch', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
