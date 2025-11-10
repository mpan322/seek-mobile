// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy_order_bid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LegacyOrderBidTypeEnum _$legacyOrderBidTypeEnum_rARIBLEV1 =
    const LegacyOrderBidTypeEnum._('rARIBLEV1');

LegacyOrderBidTypeEnum _$legacyOrderBidTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV1':
      return _$legacyOrderBidTypeEnum_rARIBLEV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LegacyOrderBidTypeEnum> _$legacyOrderBidTypeEnumValues =
    BuiltSet<LegacyOrderBidTypeEnum>(const <LegacyOrderBidTypeEnum>[
  _$legacyOrderBidTypeEnum_rARIBLEV1,
]);

Serializer<LegacyOrderBidTypeEnum> _$legacyOrderBidTypeEnumSerializer =
    _$LegacyOrderBidTypeEnumSerializer();

class _$LegacyOrderBidTypeEnumSerializer
    implements PrimitiveSerializer<LegacyOrderBidTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV1': 'RARIBLE_V1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V1': 'rARIBLEV1',
  };

  @override
  final Iterable<Type> types = const <Type>[LegacyOrderBidTypeEnum];
  @override
  final String wireName = 'LegacyOrderBidTypeEnum';

  @override
  Object serialize(Serializers serializers, LegacyOrderBidTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LegacyOrderBidTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LegacyOrderBidTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LegacyOrderBid extends LegacyOrderBid {
  @override
  final LegacyOrderBidTypeEnum type;
  @override
  final OrderDataLegacy data;

  factory _$LegacyOrderBid([void Function(LegacyOrderBidBuilder)? updates]) =>
      (LegacyOrderBidBuilder()..update(updates))._build();

  _$LegacyOrderBid._({required this.type, required this.data}) : super._();
  @override
  LegacyOrderBid rebuild(void Function(LegacyOrderBidBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegacyOrderBidBuilder toBuilder() => LegacyOrderBidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegacyOrderBid && type == other.type && data == other.data;
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
    return (newBuiltValueToStringHelper(r'LegacyOrderBid')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class LegacyOrderBidBuilder
    implements Builder<LegacyOrderBid, LegacyOrderBidBuilder> {
  _$LegacyOrderBid? _$v;

  LegacyOrderBidTypeEnum? _type;
  LegacyOrderBidTypeEnum? get type => _$this._type;
  set type(LegacyOrderBidTypeEnum? type) => _$this._type = type;

  OrderDataLegacyBuilder? _data;
  OrderDataLegacyBuilder get data => _$this._data ??= OrderDataLegacyBuilder();
  set data(OrderDataLegacyBuilder? data) => _$this._data = data;

  LegacyOrderBidBuilder() {
    LegacyOrderBid._defaults(this);
  }

  LegacyOrderBidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegacyOrderBid other) {
    _$v = other as _$LegacyOrderBid;
  }

  @override
  void update(void Function(LegacyOrderBidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegacyOrderBid build() => _build();

  _$LegacyOrderBid _build() {
    _$LegacyOrderBid _$result;
    try {
      _$result = _$v ??
          _$LegacyOrderBid._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'LegacyOrderBid', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LegacyOrderBid', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
