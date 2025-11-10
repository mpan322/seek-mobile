// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_sign_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TextSignMessageAtTypeEnum _$textSignMessageAtTypeEnum_TEXT =
    const TextSignMessageAtTypeEnum._('TEXT');

TextSignMessageAtTypeEnum _$textSignMessageAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'TEXT':
      return _$textSignMessageAtTypeEnum_TEXT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TextSignMessageAtTypeEnum> _$textSignMessageAtTypeEnumValues =
    BuiltSet<TextSignMessageAtTypeEnum>(const <TextSignMessageAtTypeEnum>[
  _$textSignMessageAtTypeEnum_TEXT,
]);

Serializer<TextSignMessageAtTypeEnum> _$textSignMessageAtTypeEnumSerializer =
    _$TextSignMessageAtTypeEnumSerializer();

class _$TextSignMessageAtTypeEnumSerializer
    implements PrimitiveSerializer<TextSignMessageAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TEXT': 'TEXT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TEXT': 'TEXT',
  };

  @override
  final Iterable<Type> types = const <Type>[TextSignMessageAtTypeEnum];
  @override
  final String wireName = 'TextSignMessageAtTypeEnum';

  @override
  Object serialize(Serializers serializers, TextSignMessageAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TextSignMessageAtTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TextSignMessageAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$TextSignMessage extends TextSignMessage {
  @override
  final TextSignMessageAtTypeEnum atType;
  @override
  final String message;

  factory _$TextSignMessage([void Function(TextSignMessageBuilder)? updates]) =>
      (TextSignMessageBuilder()..update(updates))._build();

  _$TextSignMessage._({required this.atType, required this.message})
      : super._();
  @override
  TextSignMessage rebuild(void Function(TextSignMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TextSignMessageBuilder toBuilder() => TextSignMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TextSignMessage &&
        atType == other.atType &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atType.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TextSignMessage')
          ..add('atType', atType)
          ..add('message', message))
        .toString();
  }
}

class TextSignMessageBuilder
    implements Builder<TextSignMessage, TextSignMessageBuilder> {
  _$TextSignMessage? _$v;

  TextSignMessageAtTypeEnum? _atType;
  TextSignMessageAtTypeEnum? get atType => _$this._atType;
  set atType(TextSignMessageAtTypeEnum? atType) => _$this._atType = atType;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  TextSignMessageBuilder() {
    TextSignMessage._defaults(this);
  }

  TextSignMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atType = $v.atType;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TextSignMessage other) {
    _$v = other as _$TextSignMessage;
  }

  @override
  void update(void Function(TextSignMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TextSignMessage build() => _build();

  _$TextSignMessage _build() {
    final _$result = _$v ??
        _$TextSignMessage._(
          atType: BuiltValueNullFieldError.checkNotNull(
              atType, r'TextSignMessage', 'atType'),
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'TextSignMessage', 'message'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
