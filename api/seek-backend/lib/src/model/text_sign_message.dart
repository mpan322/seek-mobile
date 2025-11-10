//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'text_sign_message.g.dart';

/// TextSignMessage
///
/// Properties:
/// * [atType]
/// * [message]
@BuiltValue()
abstract class TextSignMessage
    implements Built<TextSignMessage, TextSignMessageBuilder> {
  @BuiltValueField(wireName: r'@type')
  TextSignMessageAtTypeEnum get atType;
  // enum atTypeEnum {  TEXT,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  TextSignMessage._();

  factory TextSignMessage([void updates(TextSignMessageBuilder b)]) =
      _$TextSignMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TextSignMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TextSignMessage> get serializer =>
      _$TextSignMessageSerializer();
}

class _$TextSignMessageSerializer
    implements PrimitiveSerializer<TextSignMessage> {
  @override
  final Iterable<Type> types = const [TextSignMessage, _$TextSignMessage];

  @override
  final String wireName = r'TextSignMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TextSignMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(TextSignMessageAtTypeEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TextSignMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TextSignMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TextSignMessageAtTypeEnum),
          ) as TextSignMessageAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TextSignMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TextSignMessageBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class TextSignMessageAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'TEXT')
  static const TextSignMessageAtTypeEnum TEXT =
      _$textSignMessageAtTypeEnum_TEXT;

  static Serializer<TextSignMessageAtTypeEnum> get serializer =>
      _$textSignMessageAtTypeEnumSerializer;

  const TextSignMessageAtTypeEnum._(String name) : super(name);

  static BuiltSet<TextSignMessageAtTypeEnum> get values =>
      _$textSignMessageAtTypeEnumValues;
  static TextSignMessageAtTypeEnum valueOf(String name) =>
      _$textSignMessageAtTypeEnumValueOf(name);
}
