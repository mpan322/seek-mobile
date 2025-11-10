//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'erc20_asset_type.g.dart';

/// Erc20AssetType
///
/// Properties:
/// * [assetClass]
/// * [contract]
@BuiltValue()
abstract class Erc20AssetType
    implements Built<Erc20AssetType, Erc20AssetTypeBuilder> {
  @BuiltValueField(wireName: r'assetClass')
  Erc20AssetTypeAssetClassEnum get assetClass;
  // enum assetClassEnum {  ERC20,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  Erc20AssetType._();

  factory Erc20AssetType([void updates(Erc20AssetTypeBuilder b)]) =
      _$Erc20AssetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Erc20AssetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Erc20AssetType> get serializer =>
      _$Erc20AssetTypeSerializer();
}

class _$Erc20AssetTypeSerializer
    implements PrimitiveSerializer<Erc20AssetType> {
  @override
  final Iterable<Type> types = const [Erc20AssetType, _$Erc20AssetType];

  @override
  final String wireName = r'Erc20AssetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Erc20AssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(Erc20AssetTypeAssetClassEnum),
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
    Erc20AssetType object, {
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
    required Erc20AssetTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Erc20AssetTypeAssetClassEnum),
          ) as Erc20AssetTypeAssetClassEnum;
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
  Erc20AssetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Erc20AssetTypeBuilder();
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

class Erc20AssetTypeAssetClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ERC20')
  static const Erc20AssetTypeAssetClassEnum eRC20 =
      _$erc20AssetTypeAssetClassEnum_eRC20;

  static Serializer<Erc20AssetTypeAssetClassEnum> get serializer =>
      _$erc20AssetTypeAssetClassEnumSerializer;

  const Erc20AssetTypeAssetClassEnum._(String name) : super(name);

  static BuiltSet<Erc20AssetTypeAssetClassEnum> get values =>
      _$erc20AssetTypeAssetClassEnumValues;
  static Erc20AssetTypeAssetClassEnum valueOf(String name) =>
      _$erc20AssetTypeAssetClassEnumValueOf(name);
}
