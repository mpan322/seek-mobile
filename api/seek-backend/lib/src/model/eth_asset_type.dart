//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'eth_asset_type.g.dart';

/// EthAssetType
///
/// Properties:
/// * [assetClass]
@BuiltValue()
abstract class EthAssetType
    implements Built<EthAssetType, EthAssetTypeBuilder> {
  @BuiltValueField(wireName: r'assetClass')
  EthAssetTypeAssetClassEnum get assetClass;
  // enum assetClassEnum {  ETH,  };

  EthAssetType._();

  factory EthAssetType([void updates(EthAssetTypeBuilder b)]) = _$EthAssetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EthAssetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EthAssetType> get serializer => _$EthAssetTypeSerializer();
}

class _$EthAssetTypeSerializer implements PrimitiveSerializer<EthAssetType> {
  @override
  final Iterable<Type> types = const [EthAssetType, _$EthAssetType];

  @override
  final String wireName = r'EthAssetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EthAssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(EthAssetTypeAssetClassEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EthAssetType object, {
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
    required EthAssetTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EthAssetTypeAssetClassEnum),
          ) as EthAssetTypeAssetClassEnum;
          result.assetClass = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EthAssetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EthAssetTypeBuilder();
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

class EthAssetTypeAssetClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ETH')
  static const EthAssetTypeAssetClassEnum ETH =
      _$ethAssetTypeAssetClassEnum_ETH;

  static Serializer<EthAssetTypeAssetClassEnum> get serializer =>
      _$ethAssetTypeAssetClassEnumSerializer;

  const EthAssetTypeAssetClassEnum._(String name) : super(name);

  static BuiltSet<EthAssetTypeAssetClassEnum> get values =>
      _$ethAssetTypeAssetClassEnumValues;
  static EthAssetTypeAssetClassEnum valueOf(String name) =>
      _$ethAssetTypeAssetClassEnumValueOf(name);
}
