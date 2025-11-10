// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity_cancel_bid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivityCancelBidAtTypeEnum
    _$orderActivityCancelBidAtTypeEnum_cancelBid =
    const OrderActivityCancelBidAtTypeEnum._('cancelBid');

OrderActivityCancelBidAtTypeEnum _$orderActivityCancelBidAtTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'cancelBid':
      return _$orderActivityCancelBidAtTypeEnum_cancelBid;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityCancelBidAtTypeEnum>
    _$orderActivityCancelBidAtTypeEnumValues = BuiltSet<
        OrderActivityCancelBidAtTypeEnum>(const <OrderActivityCancelBidAtTypeEnum>[
  _$orderActivityCancelBidAtTypeEnum_cancelBid,
]);

Serializer<OrderActivityCancelBidAtTypeEnum>
    _$orderActivityCancelBidAtTypeEnumSerializer =
    _$OrderActivityCancelBidAtTypeEnumSerializer();

class _$OrderActivityCancelBidAtTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityCancelBidAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'cancelBid': 'cancel_bid',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'cancel_bid': 'cancelBid',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityCancelBidAtTypeEnum];
  @override
  final String wireName = 'OrderActivityCancelBidAtTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OrderActivityCancelBidAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityCancelBidAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityCancelBidAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityCancelBid extends OrderActivityCancelBid {
  @override
  final OrderActivityCancelBidAtTypeEnum atType;
  @override
  final String hash;
  @override
  final String maker;
  @override
  final AssetType make;
  @override
  final AssetType take;
  @override
  final String transactionHash;
  @override
  final String blockHash;
  @override
  final int blockNumber;
  @override
  final int logIndex;

  factory _$OrderActivityCancelBid(
          [void Function(OrderActivityCancelBidBuilder)? updates]) =>
      (OrderActivityCancelBidBuilder()..update(updates))._build();

  _$OrderActivityCancelBid._(
      {required this.atType,
      required this.hash,
      required this.maker,
      required this.make,
      required this.take,
      required this.transactionHash,
      required this.blockHash,
      required this.blockNumber,
      required this.logIndex})
      : super._();
  @override
  OrderActivityCancelBid rebuild(
          void Function(OrderActivityCancelBidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityCancelBidBuilder toBuilder() =>
      OrderActivityCancelBidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivityCancelBid &&
        atType == other.atType &&
        hash == other.hash &&
        maker == other.maker &&
        make == other.make &&
        take == other.take &&
        transactionHash == other.transactionHash &&
        blockHash == other.blockHash &&
        blockNumber == other.blockNumber &&
        logIndex == other.logIndex;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, make.hashCode);
    _$hash = $jc(_$hash, take.hashCode);
    _$hash = $jc(_$hash, transactionHash.hashCode);
    _$hash = $jc(_$hash, blockHash.hashCode);
    _$hash = $jc(_$hash, blockNumber.hashCode);
    _$hash = $jc(_$hash, logIndex.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivityCancelBid')
          ..add('atType', atType)
          ..add('hash', hash)
          ..add('maker', maker)
          ..add('make', make)
          ..add('take', take)
          ..add('transactionHash', transactionHash)
          ..add('blockHash', blockHash)
          ..add('blockNumber', blockNumber)
          ..add('logIndex', logIndex))
        .toString();
  }
}

class OrderActivityCancelBidBuilder
    implements Builder<OrderActivityCancelBid, OrderActivityCancelBidBuilder> {
  _$OrderActivityCancelBid? _$v;

  OrderActivityCancelBidAtTypeEnum? _atType;
  OrderActivityCancelBidAtTypeEnum? get atType => _$this._atType;
  set atType(OrderActivityCancelBidAtTypeEnum? atType) =>
      _$this._atType = atType;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  AssetTypeBuilder? _make;
  AssetTypeBuilder get make => _$this._make ??= AssetTypeBuilder();
  set make(AssetTypeBuilder? make) => _$this._make = make;

  AssetTypeBuilder? _take;
  AssetTypeBuilder get take => _$this._take ??= AssetTypeBuilder();
  set take(AssetTypeBuilder? take) => _$this._take = take;

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

  OrderActivityCancelBidBuilder() {
    OrderActivityCancelBid._defaults(this);
  }

  OrderActivityCancelBidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _hash = $v.hash;
      _maker = $v.maker;
      _make = $v.make.toBuilder();
      _take = $v.take.toBuilder();
      _transactionHash = $v.transactionHash;
      _blockHash = $v.blockHash;
      _blockNumber = $v.blockNumber;
      _logIndex = $v.logIndex;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivityCancelBid other) {
    _$v = other as _$OrderActivityCancelBid;
  }

  @override
  void update(void Function(OrderActivityCancelBidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivityCancelBid build() => _build();

  _$OrderActivityCancelBid _build() {
    _$OrderActivityCancelBid _$result;
    try {
      _$result = _$v ??
          _$OrderActivityCancelBid._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'OrderActivityCancelBid', 'atType'),
            hash: BuiltValueNullFieldError.checkNotNull(
                hash, r'OrderActivityCancelBid', 'hash'),
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'OrderActivityCancelBid', 'maker'),
            make: make.build(),
            take: take.build(),
            transactionHash: BuiltValueNullFieldError.checkNotNull(
                transactionHash, r'OrderActivityCancelBid', 'transactionHash'),
            blockHash: BuiltValueNullFieldError.checkNotNull(
                blockHash, r'OrderActivityCancelBid', 'blockHash'),
            blockNumber: BuiltValueNullFieldError.checkNotNull(
                blockNumber, r'OrderActivityCancelBid', 'blockNumber'),
            logIndex: BuiltValueNullFieldError.checkNotNull(
                logIndex, r'OrderActivityCancelBid', 'logIndex'),
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
            r'OrderActivityCancelBid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
