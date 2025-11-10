// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legacy_order_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const LegacyOrderFormTypeEnum _$legacyOrderFormTypeEnum_rARIBLEV1 =
    const LegacyOrderFormTypeEnum._('rARIBLEV1');

LegacyOrderFormTypeEnum _$legacyOrderFormTypeEnumValueOf(String name) {
  switch (name) {
    case 'rARIBLEV1':
      return _$legacyOrderFormTypeEnum_rARIBLEV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<LegacyOrderFormTypeEnum> _$legacyOrderFormTypeEnumValues =
    BuiltSet<LegacyOrderFormTypeEnum>(const <LegacyOrderFormTypeEnum>[
  _$legacyOrderFormTypeEnum_rARIBLEV1,
]);

Serializer<LegacyOrderFormTypeEnum> _$legacyOrderFormTypeEnumSerializer =
    _$LegacyOrderFormTypeEnumSerializer();

class _$LegacyOrderFormTypeEnumSerializer
    implements PrimitiveSerializer<LegacyOrderFormTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'rARIBLEV1': 'RARIBLE_V1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'RARIBLE_V1': 'rARIBLEV1',
  };

  @override
  final Iterable<Type> types = const <Type>[LegacyOrderFormTypeEnum];
  @override
  final String wireName = 'LegacyOrderFormTypeEnum';

  @override
  Object serialize(Serializers serializers, LegacyOrderFormTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  LegacyOrderFormTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      LegacyOrderFormTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$LegacyOrderForm extends LegacyOrderForm {
  @override
  final LegacyOrderFormTypeEnum type;
  @override
  final OrderDataLegacy data;

  factory _$LegacyOrderForm([void Function(LegacyOrderFormBuilder)? updates]) =>
      (LegacyOrderFormBuilder()..update(updates))._build();

  _$LegacyOrderForm._({required this.type, required this.data}) : super._();
  @override
  LegacyOrderForm rebuild(void Function(LegacyOrderFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LegacyOrderFormBuilder toBuilder() => LegacyOrderFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LegacyOrderForm && type == other.type && data == other.data;
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
    return (newBuiltValueToStringHelper(r'LegacyOrderForm')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class LegacyOrderFormBuilder
    implements Builder<LegacyOrderForm, LegacyOrderFormBuilder> {
  _$LegacyOrderForm? _$v;

  LegacyOrderFormTypeEnum? _type;
  LegacyOrderFormTypeEnum? get type => _$this._type;
  set type(LegacyOrderFormTypeEnum? type) => _$this._type = type;

  OrderDataLegacyBuilder? _data;
  OrderDataLegacyBuilder get data => _$this._data ??= OrderDataLegacyBuilder();
  set data(OrderDataLegacyBuilder? data) => _$this._data = data;

  LegacyOrderFormBuilder() {
    LegacyOrderForm._defaults(this);
  }

  LegacyOrderFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LegacyOrderForm other) {
    _$v = other as _$LegacyOrderForm;
  }

  @override
  void update(void Function(LegacyOrderFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LegacyOrderForm build() => _build();

  _$LegacyOrderForm _build() {
    _$LegacyOrderForm _$result;
    try {
      _$result = _$v ??
          _$LegacyOrderForm._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'LegacyOrderForm', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LegacyOrderForm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
