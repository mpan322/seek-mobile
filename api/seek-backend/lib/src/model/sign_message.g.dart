// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const SignMessageAtTypeEnum _$signMessageAtTypeEnum_TEXT =
    const SignMessageAtTypeEnum._('TEXT');

SignMessageAtTypeEnum _$signMessageAtTypeEnumValueOf(String name) {
  switch (name) {
    case 'TEXT':
      return _$signMessageAtTypeEnum_TEXT;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<SignMessageAtTypeEnum> _$signMessageAtTypeEnumValues =
    BuiltSet<SignMessageAtTypeEnum>(const <SignMessageAtTypeEnum>[
  _$signMessageAtTypeEnum_TEXT,
]);

Serializer<SignMessageAtTypeEnum> _$signMessageAtTypeEnumSerializer =
    _$SignMessageAtTypeEnumSerializer();

class _$SignMessageAtTypeEnumSerializer
    implements PrimitiveSerializer<SignMessageAtTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'TEXT': 'TEXT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'TEXT': 'TEXT',
  };

  @override
  final Iterable<Type> types = const <Type>[SignMessageAtTypeEnum];
  @override
  final String wireName = 'SignMessageAtTypeEnum';

  @override
  Object serialize(Serializers serializers, SignMessageAtTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  SignMessageAtTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      SignMessageAtTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$SignMessage extends SignMessage {
  @override
  final OneOf oneOf;

  factory _$SignMessage([void Function(SignMessageBuilder)? updates]) =>
      (SignMessageBuilder()..update(updates))._build();

  _$SignMessage._({required this.oneOf}) : super._();
  @override
  SignMessage rebuild(void Function(SignMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignMessageBuilder toBuilder() => SignMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignMessage && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, oneOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SignMessage')..add('oneOf', oneOf))
        .toString();
  }
}

class SignMessageBuilder implements Builder<SignMessage, SignMessageBuilder> {
  _$SignMessage? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  SignMessageBuilder() {
    SignMessage._defaults(this);
  }

  SignMessageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignMessage other) {
    _$v = other as _$SignMessage;
  }

  @override
  void update(void Function(SignMessageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SignMessage build() => _build();

  _$SignMessage _build() {
    final _$result = _$v ??
        _$SignMessage._(
          oneOf: BuiltValueNullFieldError.checkNotNull(
              oneOf, r'SignMessage', 'oneOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
