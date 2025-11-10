//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/eip712_sign_message.dart';
import 'package:seek_backend/src/model/text_sign_message.dart';
import 'package:seek_backend/src/model/eip712_domain.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'sign_message.g.dart';

/// SignMessage
///
/// Properties:
/// * [atType]
/// * [domain]
/// * [struct]
/// * [structType]
/// * [types]
/// * [message]
@BuiltValue()
abstract class SignMessage implements Built<SignMessage, SignMessageBuilder> {
  /// One Of [EIP712SignMessage], [TextSignMessage]
  OneOf get oneOf;

  SignMessage._();

  factory SignMessage([void updates(SignMessageBuilder b)]) = _$SignMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignMessage> get serializer => _$SignMessageSerializer();
}

class _$SignMessageSerializer implements PrimitiveSerializer<SignMessage> {
  @override
  final Iterable<Type> types = const [SignMessage, _$SignMessage];

  @override
  final String wireName = r'SignMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SignMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  SignMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignMessageBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(EIP712SignMessage),
      FullType(TextSignMessage),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class SignMessageAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TEXT')
  static const SignMessageAtTypeEnum TEXT = _$signMessageAtTypeEnum_TEXT;

  static Serializer<SignMessageAtTypeEnum> get serializer =>
      _$signMessageAtTypeEnumSerializer;

  const SignMessageAtTypeEnum._(String name) : super(name);

  static BuiltSet<SignMessageAtTypeEnum> get values =>
      _$signMessageAtTypeEnumValues;
  static SignMessageAtTypeEnum valueOf(String name) =>
      _$signMessageAtTypeEnumValueOf(name);
}
