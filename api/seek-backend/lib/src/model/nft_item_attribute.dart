//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_attribute.g.dart';

/// NftItemAttribute
///
/// Properties:
/// * [key]
/// * [value]
@BuiltValue()
abstract class NftItemAttribute
    implements Built<NftItemAttribute, NftItemAttributeBuilder> {
  @BuiltValueField(wireName: r'key')
  String get key;

  @BuiltValueField(wireName: r'value')
  String? get value;

  NftItemAttribute._();

  factory NftItemAttribute([void updates(NftItemAttributeBuilder b)]) =
      _$NftItemAttribute;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemAttributeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemAttribute> get serializer =>
      _$NftItemAttributeSerializer();
}

class _$NftItemAttributeSerializer
    implements PrimitiveSerializer<NftItemAttribute> {
  @override
  final Iterable<Type> types = const [NftItemAttribute, _$NftItemAttribute];

  @override
  final String wireName = r'NftItemAttribute';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemAttribute object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'key';
    yield serializers.serialize(
      object.key,
      specifiedType: const FullType(String),
    );
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemAttribute object, {
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
    required NftItemAttributeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftItemAttribute deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemAttributeBuilder();
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
