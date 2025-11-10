//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/erc1155_asset_type.dart';
import 'package:seek_backend/src/model/erc721_asset_type.dart';
import 'package:seek_backend/src/model/erc721_lazy_asset_type.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:seek_backend/src/model/erc1155_lazy_asset_type.dart';
import 'package:seek_backend/src/model/eth_asset_type.dart';
import 'package:seek_backend/src/model/erc20_asset_type.dart';
import 'package:seek_backend/src/model/generative_art_asset_type.dart';
import 'package:seek_backend/src/model/flow_asset_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'asset_type.g.dart';

/// AssetType
///
/// Properties:
/// * [assetClass]
/// * [contract]
/// * [tokenId]
/// * [uri]
/// * [creators]
/// * [royalties]
/// * [signatures]
/// * [supply]
@BuiltValue()
abstract class AssetType implements Built<AssetType, AssetTypeBuilder> {
  /// One Of [Erc1155AssetType], [Erc1155LazyAssetType], [Erc20AssetType], [Erc721AssetType], [Erc721LazyAssetType], [EthAssetType], [FlowAssetType], [GenerativeArtAssetType]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'assetClass';

  static const Map<String, Type> discriminatorMapping = {
    r'ERC1155': Erc1155AssetType,
    r'ERC1155_LAZY': Erc1155LazyAssetType,
    r'ERC20': Erc20AssetType,
    r'ERC721': Erc721AssetType,
    r'ERC721_LAZY': Erc721LazyAssetType,
    r'ETH': EthAssetType,
    r'FLOW': FlowAssetType,
    r'GEN_ART': GenerativeArtAssetType,
  };

  AssetType._();

  factory AssetType([void updates(AssetTypeBuilder b)]) = _$AssetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AssetType> get serializer => _$AssetTypeSerializer();
}

extension AssetTypeDiscriminatorExt on AssetType {
  String? get discriminatorValue {
    if (this is Erc1155AssetType) {
      return r'ERC1155';
    }
    if (this is Erc1155LazyAssetType) {
      return r'ERC1155_LAZY';
    }
    if (this is Erc20AssetType) {
      return r'ERC20';
    }
    if (this is Erc721AssetType) {
      return r'ERC721';
    }
    if (this is Erc721LazyAssetType) {
      return r'ERC721_LAZY';
    }
    if (this is EthAssetType) {
      return r'ETH';
    }
    if (this is FlowAssetType) {
      return r'FLOW';
    }
    if (this is GenerativeArtAssetType) {
      return r'GEN_ART';
    }
    return null;
  }
}

extension AssetTypeBuilderDiscriminatorExt on AssetTypeBuilder {
  String? get discriminatorValue {
    if (this is Erc1155AssetTypeBuilder) {
      return r'ERC1155';
    }
    if (this is Erc1155LazyAssetTypeBuilder) {
      return r'ERC1155_LAZY';
    }
    if (this is Erc20AssetTypeBuilder) {
      return r'ERC20';
    }
    if (this is Erc721AssetTypeBuilder) {
      return r'ERC721';
    }
    if (this is Erc721LazyAssetTypeBuilder) {
      return r'ERC721_LAZY';
    }
    if (this is EthAssetTypeBuilder) {
      return r'ETH';
    }
    if (this is FlowAssetTypeBuilder) {
      return r'FLOW';
    }
    if (this is GenerativeArtAssetTypeBuilder) {
      return r'GEN_ART';
    }
    return null;
  }
}

class _$AssetTypeSerializer implements PrimitiveSerializer<AssetType> {
  @override
  final Iterable<Type> types = const [AssetType, _$AssetType];

  @override
  final String wireName = r'AssetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    AssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  AssetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetTypeBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(AssetType.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      Erc1155AssetType,
      Erc1155LazyAssetType,
      Erc20AssetType,
      Erc721AssetType,
      Erc721LazyAssetType,
      EthAssetType,
      FlowAssetType,
      GenerativeArtAssetType,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'ERC1155':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Erc1155AssetType),
        ) as Erc1155AssetType;
        oneOfType = Erc1155AssetType;
        break;
      case r'ERC1155_LAZY':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Erc1155LazyAssetType),
        ) as Erc1155LazyAssetType;
        oneOfType = Erc1155LazyAssetType;
        break;
      case r'ERC20':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Erc20AssetType),
        ) as Erc20AssetType;
        oneOfType = Erc20AssetType;
        break;
      case r'ERC721':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Erc721AssetType),
        ) as Erc721AssetType;
        oneOfType = Erc721AssetType;
        break;
      case r'ERC721_LAZY':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(Erc721LazyAssetType),
        ) as Erc721LazyAssetType;
        oneOfType = Erc721LazyAssetType;
        break;
      case r'ETH':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(EthAssetType),
        ) as EthAssetType;
        oneOfType = EthAssetType;
        break;
      case r'FLOW':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(FlowAssetType),
        ) as FlowAssetType;
        oneOfType = FlowAssetType;
        break;
      case r'GEN_ART':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(GenerativeArtAssetType),
        ) as GenerativeArtAssetType;
        oneOfType = GenerativeArtAssetType;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class AssetTypeAssetClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GEN_ART')
  static const AssetTypeAssetClassEnum GEN_ART =
      _$assetTypeAssetClassEnum_GEN_ART;

  static Serializer<AssetTypeAssetClassEnum> get serializer =>
      _$assetTypeAssetClassEnumSerializer;

  const AssetTypeAssetClassEnum._(String name) : super(name);

  static BuiltSet<AssetTypeAssetClassEnum> get values =>
      _$assetTypeAssetClassEnumValues;
  static AssetTypeAssetClassEnum valueOf(String name) =>
      _$assetTypeAssetClassEnumValueOf(name);
}
