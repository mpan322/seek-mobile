// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rarible_v2_order_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RaribleV2OrderFormTypeEnum _$raribleV2OrderFormTypeEnum_rARIBLEV2 =
    const RaribleV2OrderFormTypeEnum._('rARIBLEV2');

RaribleV2OrderFormTypeEnum _$raribleV2OrderFormTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV2':
      return _$raribleV2OrderFormTypeEnum_rARIBLEV2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<RaribleV2OrderFormTypeEnum> _$raribleV2OrderFormTypeEnumValues =
    BuiltSet<RaribleV2OrderFormTypeEnum>(const <RaribleV2OrderFormTypeEnum>[
  _$raribleV2OrderFormTypeEnum_rARIBLEV2,
]);

Serializer<RaribleV2OrderFormTypeEnum> _$raribleV2OrderFormTypeEnumSerializer =
    _$RaribleV2OrderFormTypeEnumSerializer();

class _$RaribleV2OrderFormTypeEnumSerializer
    implements PrimitiveSerializer<RaribleV2OrderFormTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV2': 'RARIBLE_V2',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V2': 'rARIBLEV2',
  };

  @override
  final Iterable<Type> types = const <Type>[RaribleV2OrderFormTypeEnum];
  @override
  final String wireName = 'RaribleV2OrderFormTypeEnum';

  @override
  Object serialize(Serializers serializers, RaribleV2OrderFormTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RaribleV2OrderFormTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RaribleV2OrderFormTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$RaribleV2OrderForm extends RaribleV2OrderForm {
  @override
  final RaribleV2OrderFormTypeEnum type;
  @override
  final OrderRaribleV2DataV1 data;

  factory _$RaribleV2OrderForm(
          [void Function(RaribleV2OrderFormBuilder)? updates]) =>
      (RaribleV2OrderFormBuilder()..update(updates))._build();

  _$RaribleV2OrderForm._({required this.type, required this.data}) : super._();
  @override
  RaribleV2OrderForm rebuild(
          void Function(RaribleV2OrderFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RaribleV2OrderFormBuilder toBuilder() =>
      RaribleV2OrderFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RaribleV2OrderForm &&
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
    return (newBuiltValueToStringHelper(r'RaribleV2OrderForm')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class RaribleV2OrderFormBuilder
    implements Builder<RaribleV2OrderForm, RaribleV2OrderFormBuilder> {
  _$RaribleV2OrderForm? _$v;

  RaribleV2OrderFormTypeEnum? _type;
  RaribleV2OrderFormTypeEnum? get type => _$this._type;
  set type(RaribleV2OrderFormTypeEnum? type) => _$this._type = type;

  OrderRaribleV2DataV1Builder? _data;
  OrderRaribleV2DataV1Builder get data =>
      _$this._data ??= OrderRaribleV2DataV1Builder();
  set data(OrderRaribleV2DataV1Builder? data) => _$this._data = data;

  RaribleV2OrderFormBuilder() {
    RaribleV2OrderForm._defaults(this);
  }

  RaribleV2OrderFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RaribleV2OrderForm other) {
    _$v = other as _$RaribleV2OrderForm;
  }

  @override
  void update(void Function(RaribleV2OrderFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RaribleV2OrderForm build() => _build();

  _$RaribleV2OrderForm _build() {
    _$RaribleV2OrderForm _$result;
    try {
      _$result = _$v ??
          _$RaribleV2OrderForm._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'RaribleV2OrderForm', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'RaribleV2OrderForm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
