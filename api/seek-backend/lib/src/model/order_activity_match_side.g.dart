// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_activity_match_side.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OrderActivityMatchSideTypeEnum _$orderActivityMatchSideTypeEnum_SELL =
    const OrderActivityMatchSideTypeEnum._('SELL');
const OrderActivityMatchSideTypeEnum _$orderActivityMatchSideTypeEnum_BID =
    const OrderActivityMatchSideTypeEnum._('BID');

OrderActivityMatchSideTypeEnum _$orderActivityMatchSideTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'SELL':
      return _$orderActivityMatchSideTypeEnum_SELL;
    case 'BID':
      return _$orderActivityMatchSideTypeEnum_BID;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OrderActivityMatchSideTypeEnum>
    _$orderActivityMatchSideTypeEnumValues = BuiltSet<
        OrderActivityMatchSideTypeEnum>(const <OrderActivityMatchSideTypeEnum>[
  _$orderActivityMatchSideTypeEnum_SELL,
  _$orderActivityMatchSideTypeEnum_BID,
]);

Serializer<OrderActivityMatchSideTypeEnum>
    _$orderActivityMatchSideTypeEnumSerializer =
    _$OrderActivityMatchSideTypeEnumSerializer();

class _$OrderActivityMatchSideTypeEnumSerializer
    implements PrimitiveSerializer<OrderActivityMatchSideTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'SELL': 'SELL',
    'BID': 'BID',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'SELL': 'SELL',
    'BID': 'BID',
  };

  @override
  final Iterable<Type> types = const <Type>[OrderActivityMatchSideTypeEnum];
  @override
  final String wireName = 'OrderActivityMatchSideTypeEnum';

  @override
  Object serialize(
          Serializers serializers, OrderActivityMatchSideTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OrderActivityMatchSideTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OrderActivityMatchSideTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OrderActivityMatchSide extends OrderActivityMatchSide {
  @override
  final String maker;
  @override
  final String hash;
  @override
  final Asset asset;
  @override
  final OrderActivityMatchSideTypeEnum? type;

  factory _$OrderActivityMatchSide(
          [void Function(OrderActivityMatchSideBuilder)? updates]) =>
      (OrderActivityMatchSideBuilder()..update(updates))._build();

  _$OrderActivityMatchSide._(
      {required this.maker, required this.hash, required this.asset, this.type})
      : super._();
  @override
  OrderActivityMatchSide rebuild(
          void Function(OrderActivityMatchSideBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrderActivityMatchSideBuilder toBuilder() =>
      OrderActivityMatchSideBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderActivityMatchSide &&
        maker == other.maker &&
        hash == other.hash &&
        asset == other.asset &&
        type == other.type;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maker.hashCode);
    _$hash = $jc(_$hash, hash.hashCode);
    _$hash = $jc(_$hash, asset.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderActivityMatchSide')
          ..add('maker', maker)
          ..add('hash', hash)
          ..add('asset', asset)
          ..add('type', type))
        .toString();
  }
}

class OrderActivityMatchSideBuilder
    implements Builder<OrderActivityMatchSide, OrderActivityMatchSideBuilder> {
  _$OrderActivityMatchSide? _$v;

  String? _maker;
  String? get maker => _$this._maker;
  set maker(String? maker) => _$this._maker = maker;

  String? _hash;
  String? get hash => _$this._hash;
  set hash(String? hash) => _$this._hash = hash;

  AssetBuilder? _asset;
  AssetBuilder get asset => _$this._asset ??= AssetBuilder();
  set asset(AssetBuilder? asset) => _$this._asset = asset;

  OrderActivityMatchSideTypeEnum? _type;
  OrderActivityMatchSideTypeEnum? get type => _$this._type;
  set type(OrderActivityMatchSideTypeEnum? type) => _$this._type = type;

  OrderActivityMatchSideBuilder() {
    OrderActivityMatchSide._defaults(this);
  }

  OrderActivityMatchSideBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maker = $v.maker;
      _hash = $v.hash;
      _asset = $v.asset.toBuilder();
      _type = $v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderActivityMatchSide other) {
    _$v = other as _$OrderActivityMatchSide;
  }

  @override
  void update(void Function(OrderActivityMatchSideBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderActivityMatchSide build() => _build();

  _$OrderActivityMatchSide _build() {
    _$OrderActivityMatchSide _$result;
    try {
      _$result = _$v ??
          _$OrderActivityMatchSide._(
            maker: BuiltValueNullFieldError.checkNotNull(
                maker, r'OrderActivityMatchSide', 'maker'),
            hash: BuiltValueNullFieldError.checkNotNull(
                hash, r'OrderActivityMatchSide', 'hash'),
            asset: asset.build(),
            type: type,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'asset';
        asset.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OrderActivityMatchSide', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
