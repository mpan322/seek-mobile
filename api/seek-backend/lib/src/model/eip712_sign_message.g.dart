// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eip712_sign_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EIP712SignMessageAtTypeEnum _$eIP712SignMessageAtTypeEnum_eIP712 =
    const EIP712SignMessageAtTypeEnum._('eIP712');

EIP712SignMessageAtTypeEnum _$eIP712SignMessageAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'eIP712':
      return _$eIP712SignMessageAtTypeEnum_eIP712;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EIP712SignMessageAtTypeEnum>
    _$eIP712SignMessageAtTypeEnumValues =
    BuiltSet<EIP712SignMessageAtTypeEnum>(const <EIP712SignMessageAtTypeEnum>[
  _$eIP712SignMessageAtTypeEnum_eIP712,
]);

Serializer<EIP712SignMessageAtTypeEnum>
    _$eIP712SignMessageAtTypeEnumSerializer =
    _$EIP712SignMessageAtTypeEnumSerializer();

class _$EIP712SignMessageAtTypeEnumSerializer
    implements PrimitiveSerializer<EIP712SignMessageAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'eIP712': 'EIP712',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'EIP712': 'eIP712',
  };

  @override
  final Iterable<Type> types = const <Type>[EIP712SignMessageAtTypeEnum];
  @override
  final String wireName = 'EIP712SignMessageAtTypeEnum';

  @override
  Object serialize(Serializers serializers, EIP712SignMessageAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EIP712SignMessageAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EIP712SignMessageAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EIP712SignMessage extends EIP712SignMessage {
  @override
  final EIP712SignMessageAtTypeEnum atType;
  @override
  final EIP712Domain domain;
  @override
  final JsonObject struct;
  @override
  final String structType;
  @override
  final JsonObject types;

  factory _$EIP712SignMessage(
          [void Function(EIP712SignMessageBuilder)? updates]) =>
      (EIP712SignMessageBuilder()..update(updates))._build();

  _$EIP712SignMessage._(
      {required this.atType,
      required this.domain,
      required this.struct,
      required this.structType,
      required this.types})
      : super._();
  @override
  EIP712SignMessage rebuild(void Function(EIP712SignMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EIP712SignMessageBuilder toBuilder() =>
      EIP712SignMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EIP712SignMessage &&
        atType == other.atType &&
        domain == other.domain &&
        struct == other.struct &&
        structType == other.structType &&
        types == other.types;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, domain.hashCode);
    _$hash = $jc(_$hash, struct.hashCode);
    _$hash = $jc(_$hash, structType.hashCode);
    _$hash = $jc(_$hash, types.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EIP712SignMessage')
          ..add('atType', atType)
          ..add('domain', domain)
          ..add('struct', struct)
          ..add('structType', structType)
          ..add('types', types))
        .toString();
  }
}

class EIP712SignMessageBuilder
    implements Builder<EIP712SignMessage, EIP712SignMessageBuilder> {
  _$EIP712SignMessage? _$v;

  EIP712SignMessageAtTypeEnum? _atType;
  EIP712SignMessageAtTypeEnum? get atType => _$this._atType;
  set atType(EIP712SignMessageAtTypeEnum? atType) => _$this._atType = atType;

  EIP712DomainBuilder? _domain;
  EIP712DomainBuilder get domain => _$this._domain ??= EIP712DomainBuilder();
  set domain(EIP712DomainBuilder? domain) => _$this._domain = domain;

  JsonObject? _struct;
  JsonObject? get struct => _$this._struct;
  set struct(JsonObject? struct) => _$this._struct = struct;

  String? _structType;
  String? get structType => _$this._structType;
  set structType(String? structType) => _$this._structType = structType;

  JsonObject? _types;
  JsonObject? get types => _$this._types;
  set types(JsonObject? types) => _$this._types = types;

  EIP712SignMessageBuilder() {
    EIP712SignMessage._defaults(this);
  }

  EIP712SignMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _domain = $v.domain.toBuilder();
      _struct = $v.struct;
      _structType = $v.structType;
      _types = $v.types;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EIP712SignMessage other) {
    _$v = other as _$EIP712SignMessage;
  }

  @override
  void update(void Function(EIP712SignMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EIP712SignMessage build() => _build();

  _$EIP712SignMessage _build() {
    _$EIP712SignMessage _$result;
    try {
      _$result = _$v ??
          _$EIP712SignMessage._(
            atType: BuiltValueNullFieldError.checkNotNull(
                atType, r'EIP712SignMessage', 'atType'),
            domain: domain.build(),
            struct: BuiltValueNullFieldError.checkNotNull(
                struct, r'EIP712SignMessage', 'struct'),
            structType: BuiltValueNullFieldError.checkNotNull(
                structType, r'EIP712SignMessage', 'structType'),
            types: BuiltValueNullFieldError.checkNotNull(
                types, r'EIP712SignMessage', 'types'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'domain';
        domain.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EIP712SignMessage', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
