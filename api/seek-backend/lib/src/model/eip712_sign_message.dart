//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/eip712_domain.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eip712_sign_message.g.dart';

/// EIP712SignMessage
///
/// Properties:
/// * [atType]
/// * [domain]
/// * [struct]
/// * [structType]
/// * [types]
@BuiltValue()
abstract class EIP712SignMessage
    implements Built<EIP712SignMessage, EIP712SignMessageBuilder> {
  @BuiltValueField(wireName: r'@type')
  EIP712SignMessageAtTypeEnum get atType;
  // enum atTypeEnum {  EIP712,  };

  @BuiltValueField(wireName: r'domain')
  EIP712Domain get domain;

  @BuiltValueField(wireName: r'struct')
  JsonObject get struct;

  @BuiltValueField(wireName: r'structType')
  String get structType;

  @BuiltValueField(wireName: r'types')
  JsonObject get types;

  EIP712SignMessage._();

  factory EIP712SignMessage([void updates(EIP712SignMessageBuilder b)]) =
      _$EIP712SignMessage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EIP712SignMessageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EIP712SignMessage> get serializer =>
      _$EIP712SignMessageSerializer();
}

class _$EIP712SignMessageSerializer
    implements PrimitiveSerializer<EIP712SignMessage> {
  @override
  final Iterable<Type> types = const [EIP712SignMessage, _$EIP712SignMessage];

  @override
  final String wireName = r'EIP712SignMessage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EIP712SignMessage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(EIP712SignMessageAtTypeEnum),
    );
    yield r'domain';
    yield serializers.serialize(
      object.domain,
      specifiedType: const FullType(EIP712Domain),
    );
    yield r'struct';
    yield serializers.serialize(
      object.struct,
      specifiedType: const FullType(JsonObject),
    );
    yield r'structType';
    yield serializers.serialize(
      object.structType,
      specifiedType: const FullType(String),
    );
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType: const FullType(JsonObject),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EIP712SignMessage object, {
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
    required EIP712SignMessageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EIP712SignMessageAtTypeEnum),
          ) as EIP712SignMessageAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'domain':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EIP712Domain),
          ) as EIP712Domain;
          result.domain.replace(valueDes);
          break;
        case r'struct':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.struct = valueDes;
          break;
        case r'structType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.structType = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.types = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EIP712SignMessage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EIP712SignMessageBuilder();
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

class EIP712SignMessageAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'EIP712')
  static const EIP712SignMessageAtTypeEnum eIP712 =
      _$eIP712SignMessageAtTypeEnum_eIP712;

  static Serializer<EIP712SignMessageAtTypeEnum> get serializer =>
      _$eIP712SignMessageAtTypeEnumSerializer;

  const EIP712SignMessageAtTypeEnum._(String name) : super(name);

  static BuiltSet<EIP712SignMessageAtTypeEnum> get values =>
      _$eIP712SignMessageAtTypeEnumValues;
  static EIP712SignMessageAtTypeEnum valueOf(String name) =>
      _$eIP712SignMessageAtTypeEnumValueOf(name);
}
