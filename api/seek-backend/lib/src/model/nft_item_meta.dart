//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_item_attribute.dart';
import 'package:seek_backend/src/model/nft_media.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_meta.g.dart';

/// NftItemMeta
///
/// Properties:
/// * [name]
/// * [description]
/// * [attributes]
/// * [image]
/// * [animation]
@BuiltValue()
abstract class NftItemMeta implements Built<NftItemMeta, NftItemMetaBuilder> {
  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'description')
  String? get description;

  @BuiltValueField(wireName: r'attributes')
  BuiltList<NftItemAttribute>? get attributes;

  @BuiltValueField(wireName: r'image')
  NftMedia? get image;

  @BuiltValueField(wireName: r'animation')
  NftMedia? get animation;

  NftItemMeta._();

  factory NftItemMeta([void updates(NftItemMetaBuilder b)]) = _$NftItemMeta;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemMetaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemMeta> get serializer => _$NftItemMetaSerializer();
}

class _$NftItemMetaSerializer implements PrimitiveSerializer<NftItemMeta> {
  @override
  final Iterable<Type> types = const [NftItemMeta, _$NftItemMeta];

  @override
  final String wireName = r'NftItemMeta';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemMeta object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    if (object.attributes != null) {
      yield r'attributes';
      yield serializers.serialize(
        object.attributes,
        specifiedType: const FullType(BuiltList, [FullType(NftItemAttribute)]),
      );
    }
    if (object.image != null) {
      yield r'image';
      yield serializers.serialize(
        object.image,
        specifiedType: const FullType(NftMedia),
      );
    }
    if (object.animation != null) {
      yield r'animation';
      yield serializers.serialize(
        object.animation,
        specifiedType: const FullType(NftMedia),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemMeta object, {
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
    required NftItemMetaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'attributes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NftItemAttribute)]),
          ) as BuiltList<NftItemAttribute>;
          result.attributes.replace(valueDes);
          break;
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftMedia),
          ) as NftMedia;
          result.image.replace(valueDes);
          break;
        case r'animation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftMedia),
          ) as NftMedia;
          result.animation.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftItemMeta deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemMetaBuilder();
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
