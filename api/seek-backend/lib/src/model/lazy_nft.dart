//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:seek_backend/src/model/lazy_erc721.dart';
import 'package:seek_backend/src/model/lazy_erc1155.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'lazy_nft.g.dart';

/// Type of an Asset
///
/// Properties:
/// * [contract]
/// * [tokenId]
/// * [uri]
/// * [creators]
/// * [royalties]
/// * [signatures]
/// * [atType]
/// * [supply]
@BuiltValue()
abstract class LazyNft implements Built<LazyNft, LazyNftBuilder> {
  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'creators')
  BuiltList<ModelPart> get creators;

  @BuiltValueField(wireName: r'royalties')
  BuiltList<ModelPart> get royalties;

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'uri')
  String get uri;

  @BuiltValueField(wireName: r'signatures')
  BuiltList<String> get signatures;

  /// One Of [LazyErc1155], [LazyErc721]
  OneOf get oneOf;

  LazyNft._();

  factory LazyNft([void updates(LazyNftBuilder b)]) = _$LazyNft;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LazyNftBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LazyNft> get serializer => _$LazyNftSerializer();
}

class _$LazyNftSerializer implements PrimitiveSerializer<LazyNft> {
  @override
  final Iterable<Type> types = const [LazyNft, _$LazyNft];

  @override
  final String wireName = r'LazyNft';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LazyNft object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tokenId';
    yield serializers.serialize(
      object.tokenId,
      specifiedType: const FullType(String),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    yield r'creators';
    yield serializers.serialize(
      object.creators,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
    yield r'royalties';
    yield serializers.serialize(
      object.royalties,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
    yield r'signatures';
    yield serializers.serialize(
      object.signatures,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LazyNft object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required LazyNftBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'creators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.creators.replace(valueDes);
          break;
        case r'royalties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.royalties.replace(valueDes);
          break;
        case r'signatures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.signatures.replace(valueDes);
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LazyNft deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LazyNftBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(LazyErc721),
      FullType(LazyErc1155),
    ]);
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
    oneOfDataSrc = unhandled;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class LazyNftAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ERC1155')
  static const LazyNftAtTypeEnum eRC1155 = _$lazyNftAtTypeEnum_eRC1155;

  static Serializer<LazyNftAtTypeEnum> get serializer =>
      _$lazyNftAtTypeEnumSerializer;

  const LazyNftAtTypeEnum._(String name) : super(name);

  static BuiltSet<LazyNftAtTypeEnum> get values => _$lazyNftAtTypeEnumValues;
  static LazyNftAtTypeEnum valueOf(String name) =>
      _$lazyNftAtTypeEnumValueOf(name);
}
