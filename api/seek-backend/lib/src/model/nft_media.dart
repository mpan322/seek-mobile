//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_media_meta.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_media.g.dart';

/// NftMedia
///
/// Properties:
/// * [url]
/// * [meta]
@BuiltValue()
abstract class NftMedia implements Built<NftMedia, NftMediaBuilder> {
  @BuiltValueField(wireName: r'url')
  BuiltMap<String, String> get url;

  @BuiltValueField(wireName: r'meta')
  BuiltMap<String, NftMediaMeta> get meta;

  NftMedia._();

  factory NftMedia([void updates(NftMediaBuilder b)]) = _$NftMedia;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftMediaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftMedia> get serializer => _$NftMediaSerializer();
}

class _$NftMediaSerializer implements PrimitiveSerializer<NftMedia> {
  @override
  final Iterable<Type> types = const [NftMedia, _$NftMedia];

  @override
  final String wireName = r'NftMedia';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftMedia object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(String)]),
    );
    yield r'meta';
    yield serializers.serialize(
      object.meta,
      specifiedType:
          const FullType(BuiltMap, [FullType(String), FullType(NftMediaMeta)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftMedia object, {
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
    required NftMediaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>;
          result.url.replace(valueDes);
          break;
        case r'meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltMap, [FullType(String), FullType(NftMediaMeta)]),
          ) as BuiltMap<String, NftMediaMeta>;
          result.meta.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftMedia deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftMediaBuilder();
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
