// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rarible_v2_order_bid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RaribleV2OrderBidTypeEnum _$raribleV2OrderBidTypeEnum_rARIBLEV2 =
    const RaribleV2OrderBidTypeEnum._('rARIBLEV2');

RaribleV2OrderBidTypeEnum _$raribleV2OrderBidTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV2':
      return _$raribleV2OrderBidTypeEnum_rARIBLEV2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RaribleV2OrderBidTypeEnum> _$raribleV2OrderBidTypeEnumValues =
    BuiltSet<RaribleV2OrderBidTypeEnum>(const <RaribleV2OrderBidTypeEnum>[
  _$raribleV2OrderBidTypeEnum_rARIBLEV2,
]);

Serializer<RaribleV2OrderBidTypeEnum> _$raribleV2OrderBidTypeEnumSerializer =
    _$RaribleV2OrderBidTypeEnumSerializer();

class _$RaribleV2OrderBidTypeEnumSerializer
    implements PrimitiveSerializer<RaribleV2OrderBidTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV2': 'RARIBLE_V2',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V2': 'rARIBLEV2',
  };

  @override
  final Iterable<Type> types = const <Type>[RaribleV2OrderBidTypeEnum];
  @override
  final String wireName = 'RaribleV2OrderBidTypeEnum';

  @override
  Object serialize(Serializers serializers, RaribleV2OrderBidTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RaribleV2OrderBidTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RaribleV2OrderBidTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RaribleV2OrderBid extends RaribleV2OrderBid {
  @override
  final RaribleV2OrderBidTypeEnum type;
  @override
  final OrderRaribleV2DataV1 data;

  factory _$RaribleV2OrderBid(
          [void Function(RaribleV2OrderBidBuilder)? updates]) =>
      (RaribleV2OrderBidBuilder()..update(updates))._build();

  _$RaribleV2OrderBid._({required this.type, required this.data}) : super._();
  @override
  RaribleV2OrderBid rebuild(void Function(RaribleV2OrderBidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RaribleV2OrderBidBuilder toBuilder() =>
      RaribleV2OrderBidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RaribleV2OrderBid &&
        type == other.type &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RaribleV2OrderBid')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class RaribleV2OrderBidBuilder
    implements Builder<RaribleV2OrderBid, RaribleV2OrderBidBuilder> {
  _$RaribleV2OrderBid? _$v;

  RaribleV2OrderBidTypeEnum? _type;
  RaribleV2OrderBidTypeEnum? get type => _$this._type;
  set type(RaribleV2OrderBidTypeEnum? type) => _$this._type = type;

  OrderRaribleV2DataV1Builder? _data;
  OrderRaribleV2DataV1Builder get data =>
      _$this._data ??= OrderRaribleV2DataV1Builder();
  set data(OrderRaribleV2DataV1Builder? data) => _$this._data = data;

  RaribleV2OrderBidBuilder() {
    RaribleV2OrderBid._defaults(this);
  }

  RaribleV2OrderBidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RaribleV2OrderBid other) {
    _$v = other as _$RaribleV2OrderBid;
  }

  @override
  void update(void Function(RaribleV2OrderBidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RaribleV2OrderBid build() => _build();

  _$RaribleV2OrderBid _build() {
    _$RaribleV2OrderBid _$result;
    try {
      _$result = _$v ??
          _$RaribleV2OrderBid._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'RaribleV2OrderBid', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RaribleV2OrderBid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
