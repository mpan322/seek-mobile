//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'erc1155_lazy_asset_type.g.dart';

/// Erc1155LazyAssetType
///
/// Properties:
/// * [assetClass]
/// * [contract]
/// * [tokenId]
/// * [uri]
/// * [supply]
/// * [creators]
/// * [royalties]
/// * [signatures]
@BuiltValue()
abstract class Erc1155LazyAssetType
    implements Built<Erc1155LazyAssetType, Erc1155LazyAssetTypeBuilder> {
  @BuiltValueField(wireName: r'assetClass')
  Erc1155LazyAssetTypeAssetClassEnum get assetClass;
  // enum assetClassEnum {  ERC1155_LAZY,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'uri')
  String get uri;

  @BuiltValueField(wireName: r'supply')
  String get supply;

  @BuiltValueField(wireName: r'creators')
  BuiltList<ModelPart> get creators;

  @BuiltValueField(wireName: r'royalties')
  BuiltList<ModelPart> get royalties;

  @BuiltValueField(wireName: r'signatures')
  BuiltList<String> get signatures;

  Erc1155LazyAssetType._();

  factory Erc1155LazyAssetType([void updates(Erc1155LazyAssetTypeBuilder b)]) =
      _$Erc1155LazyAssetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Erc1155LazyAssetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Erc1155LazyAssetType> get serializer =>
      _$Erc1155LazyAssetTypeSerializer();
}

class _$Erc1155LazyAssetTypeSerializer
    implements PrimitiveSerializer<Erc1155LazyAssetType> {
  @override
  final Iterable<Type> types = const [
    Erc1155LazyAssetType,
    _$Erc1155LazyAssetType
  ];

  @override
  final String wireName = r'Erc1155LazyAssetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Erc1155LazyAssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(Erc1155LazyAssetTypeAssetClassEnum),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
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
    yield r'supply';
    yield serializers.serialize(
      object.supply,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    Erc1155LazyAssetType object, {
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
    required Erc1155LazyAssetTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Erc1155LazyAssetTypeAssetClassEnum),
          ) as Erc1155LazyAssetTypeAssetClassEnum;
          result.assetClass = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
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
        case r'supply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supply = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Erc1155LazyAssetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Erc1155LazyAssetTypeBuilder();
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

class Erc1155LazyAssetTypeAssetClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ERC1155_LAZY')
  static const Erc1155LazyAssetTypeAssetClassEnum eRC1155LAZY =
      _$erc1155LazyAssetTypeAssetClassEnum_eRC1155LAZY;

  static Serializer<Erc1155LazyAssetTypeAssetClassEnum> get serializer =>
      _$erc1155LazyAssetTypeAssetClassEnumSerializer;

  const Erc1155LazyAssetTypeAssetClassEnum._(String name) : super(name);

  static BuiltSet<Erc1155LazyAssetTypeAssetClassEnum> get values =>
      _$erc1155LazyAssetTypeAssetClassEnumValues;
  static Erc1155LazyAssetTypeAssetClassEnum valueOf(String name) =>
      _$erc1155LazyAssetTypeAssetClassEnumValueOf(name);
}
