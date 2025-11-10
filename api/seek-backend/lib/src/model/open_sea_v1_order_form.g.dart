// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_sea_v1_order_form.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const OpenSeaV1OrderFormTypeEnum _$openSeaV1OrderFormTypeEnum_oPENSEAV1 =
    const OpenSeaV1OrderFormTypeEnum._('oPENSEAV1');

OpenSeaV1OrderFormTypeEnum _$openSeaV1OrderFormTypeEnumValueOf(String name) {
  switch (name) {
    case 'oPENSEAV1':
      return _$openSeaV1OrderFormTypeEnum_oPENSEAV1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<OpenSeaV1OrderFormTypeEnum> _$openSeaV1OrderFormTypeEnumValues =
    BuiltSet<OpenSeaV1OrderFormTypeEnum>(const <OpenSeaV1OrderFormTypeEnum>[
  _$openSeaV1OrderFormTypeEnum_oPENSEAV1,
]);

Serializer<OpenSeaV1OrderFormTypeEnum> _$openSeaV1OrderFormTypeEnumSerializer =
    _$OpenSeaV1OrderFormTypeEnumSerializer();

class _$OpenSeaV1OrderFormTypeEnumSerializer
    implements PrimitiveSerializer<OpenSeaV1OrderFormTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'oPENSEAV1': 'OPEN_SEA_V1',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'OPEN_SEA_V1': 'oPENSEAV1',
  };

  @override
  final Iterable<Type> types = const <Type>[OpenSeaV1OrderFormTypeEnum];
  @override
  final String wireName = 'OpenSeaV1OrderFormTypeEnum';

  @override
  Object serialize(Serializers serializers, OpenSeaV1OrderFormTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  OpenSeaV1OrderFormTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      OpenSeaV1OrderFormTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$OpenSeaV1OrderForm extends OpenSeaV1OrderForm {
  @override
  final OpenSeaV1OrderFormTypeEnum type;
  @override
  final OrderOpenSeaV1DataV1 data;

  factory _$OpenSeaV1OrderForm(
          [void Function(OpenSeaV1OrderFormBuilder)? updates]) =>
      (OpenSeaV1OrderFormBuilder()..update(updates))._build();

  _$OpenSeaV1OrderForm._({required this.type, required this.data}) : super._();
  @override
  OpenSeaV1OrderForm rebuild(
          void Function(OpenSeaV1OrderFormBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OpenSeaV1OrderFormBuilder toBuilder() =>
      OpenSeaV1OrderFormBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OpenSeaV1OrderForm &&
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
    return (newBuiltValueToStringHelper(r'OpenSeaV1OrderForm')
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class OpenSeaV1OrderFormBuilder
    implements Builder<OpenSeaV1OrderForm, OpenSeaV1OrderFormBuilder> {
  _$OpenSeaV1OrderForm? _$v;

  OpenSeaV1OrderFormTypeEnum? _type;
  OpenSeaV1OrderFormTypeEnum? get type => _$this._type;
  set type(OpenSeaV1OrderFormTypeEnum? type) => _$this._type = type;

  OrderOpenSeaV1DataV1Builder? _data;
  OrderOpenSeaV1DataV1Builder get data =>
      _$this._data ??= OrderOpenSeaV1DataV1Builder();
  set data(OrderOpenSeaV1DataV1Builder? data) => _$this._data = data;

  OpenSeaV1OrderFormBuilder() {
    OpenSeaV1OrderForm._defaults(this);
  }

  OpenSeaV1OrderFormBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OpenSeaV1OrderForm other) {
    _$v = other as _$OpenSeaV1OrderForm;
  }

  @override
  void update(void Function(OpenSeaV1OrderFormBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OpenSeaV1OrderForm build() => _build();

  _$OpenSeaV1OrderForm _build() {
    _$OpenSeaV1OrderForm _$result;
    try {
      _$result = _$v ??
          _$OpenSeaV1OrderForm._(
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'OpenSeaV1OrderForm', 'type'),
            data: data.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'OpenSeaV1OrderForm', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
