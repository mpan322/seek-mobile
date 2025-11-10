//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'generative_art_asset_type.g.dart';

/// GenerativeArtAssetType
///
/// Properties:
/// * [assetClass]
/// * [contract]
@BuiltValue()
abstract class GenerativeArtAssetType
    implements Built<GenerativeArtAssetType, GenerativeArtAssetTypeBuilder> {
  @BuiltValueField(wireName: r'assetClass')
  GenerativeArtAssetTypeAssetClassEnum get assetClass;
  // enum assetClassEnum {  GEN_ART,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  GenerativeArtAssetType._();

  factory GenerativeArtAssetType(
          [void updates(GenerativeArtAssetTypeBuilder b)]) =
      _$GenerativeArtAssetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GenerativeArtAssetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GenerativeArtAssetType> get serializer =>
      _$GenerativeArtAssetTypeSerializer();
}

class _$GenerativeArtAssetTypeSerializer
    implements PrimitiveSerializer<GenerativeArtAssetType> {
  @override
  final Iterable<Type> types = const [
    GenerativeArtAssetType,
    _$GenerativeArtAssetType
  ];

  @override
  final String wireName = r'GenerativeArtAssetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GenerativeArtAssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(GenerativeArtAssetTypeAssetClassEnum),
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
    GenerativeArtAssetType object, {
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
    required GenerativeArtAssetTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GenerativeArtAssetTypeAssetClassEnum),
          ) as GenerativeArtAssetTypeAssetClassEnum;
          result.assetClass = valueDes;
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
  GenerativeArtAssetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GenerativeArtAssetTypeBuilder();
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

class GenerativeArtAssetTypeAssetClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'GEN_ART')
  static const GenerativeArtAssetTypeAssetClassEnum GEN_ART =
      _$generativeArtAssetTypeAssetClassEnum_GEN_ART;

  static Serializer<GenerativeArtAssetTypeAssetClassEnum> get serializer =>
      _$generativeArtAssetTypeAssetClassEnumSerializer;

  const GenerativeArtAssetTypeAssetClassEnum._(String name) : super(name);

  static BuiltSet<GenerativeArtAssetTypeAssetClassEnum> get values =>
      _$generativeArtAssetTypeAssetClassEnumValues;
  static GenerativeArtAssetTypeAssetClassEnum valueOf(String name) =>
      _$generativeArtAssetTypeAssetClassEnumValueOf(name);
}
