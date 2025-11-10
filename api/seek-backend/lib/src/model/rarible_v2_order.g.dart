// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rarible_v2_order.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RaribleV2OrderTypeEnum _$raribleV2OrderTypeEnum_rARIBLEV2 =
    const RaribleV2OrderTypeEnum._('rARIBLEV2');

RaribleV2OrderTypeEnum _$raribleV2OrderTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV2':
      return _$raribleV2OrderTypeEnum_rARIBLEV2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RaribleV2OrderTypeEnum> _$raribleV2OrderTypeEnumValues =
    BuiltSet<RaribleV2OrderTypeEnum>(const <RaribleV2OrderTypeEnum>[
  _$raribleV2OrderTypeEnum_rARIBLEV2,
]);

Serializer<RaribleV2OrderTypeEnum> _$raribleV2OrderTypeEnumSerializer =
    _$RaribleV2OrderTypeEnumSerializer();

class _$RaribleV2OrderTypeEnumSerializer
    implements PrimitiveSerializer<RaribleV2OrderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV2': 'RARIBLE_V2',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V2': 'rARIBLEV2',
  };

  @override
  final Iterable<Type> types = const <Type>[RaribleV2OrderTypeEnum];
  @override
  final String wireName = 'RaribleV2OrderTypeEnum';

  @override
  Object serialize(Serializers serializers, RaribleV2OrderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RaribleV2OrderTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RaribleV2OrderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RaribleV2Order extends RaribleV2Order {
  @override
  final RaribleV2OrderTypeEnum type;
  @override
  final OrderRaribleV2DataV1 data;

  factory _$RaribleV2Order([void Function(RaribleV2OrderBuilder)? updates]) =>
      (RaribleV2OrderBuilder()..update(updates))._build();

  _$RaribleV2Order._({required this.type, required this.data}) : super._();
  @override
  RaribleV2Order rebuild(void Function(RaribleV2OrderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RaribleV2OrderBuilder toBuilder() => RaribleV2OrderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RaribleV2Order && type == other.type && data == other.data;
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
    return (newBuiltValueToStringHelper(r'RaribleV2Order')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class RaribleV2OrderBuilder
    implements Builder<RaribleV2Order, RaribleV2OrderBuilder> {
  _$RaribleV2Order? _$v;

  RaribleV2OrderTypeEnum? _type;
  RaribleV2OrderTypeEnum? get type => _$this._type;
  set type(RaribleV2OrderTypeEnum? type) => _$this._type = type;

  OrderRaribleV2DataV1Builder? _data;
  OrderRaribleV2DataV1Builder get data =>
      _$this._data ??= OrderRaribleV2DataV1Builder();
  set data(OrderRaribleV2DataV1Builder? data) => _$this._data = data;

  RaribleV2OrderBuilder() {
    RaribleV2Order._defaults(this);
  }

  RaribleV2OrderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RaribleV2Order other) {
    _$v = other as _$RaribleV2Order;
  }

  @override
  void update(void Function(RaribleV2OrderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RaribleV2Order build() => _build();

  _$RaribleV2Order _build() {
    _$RaribleV2Order _$result;
    try {
      _$result = _$v ??
          _$RaribleV2Order._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'RaribleV2Order', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RaribleV2Order', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
