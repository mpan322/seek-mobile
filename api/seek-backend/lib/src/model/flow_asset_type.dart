//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flow_asset_type.g.dart';

/// FlowAssetType
///
/// Properties:
/// * [assetClass]
@BuiltValue()
abstract class FlowAssetType
    implements Built<FlowAssetType, FlowAssetTypeBuilder> {
  @BuiltValueField(wireName: r'assetClass')
  FlowAssetTypeAssetClassEnum get assetClass;
  // enum assetClassEnum {  FLOW,  };

  FlowAssetType._();

  factory FlowAssetType([void updates(FlowAssetTypeBuilder b)]) =
      _$FlowAssetType;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlowAssetTypeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlowAssetType> get serializer =>
      _$FlowAssetTypeSerializer();
}

class _$FlowAssetTypeSerializer implements PrimitiveSerializer<FlowAssetType> {
  @override
  final Iterable<Type> types = const [FlowAssetType, _$FlowAssetType];

  @override
  final String wireName = r'FlowAssetType';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlowAssetType object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetClass';
    yield serializers.serialize(
      object.assetClass,
      specifiedType: const FullType(FlowAssetTypeAssetClassEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FlowAssetType object, {
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
    required FlowAssetTypeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlowAssetTypeAssetClassEnum),
          ) as FlowAssetTypeAssetClassEnum;
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
  FlowAssetType deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlowAssetTypeBuilder();
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

class FlowAssetTypeAssetClassEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FLOW')
  static const FlowAssetTypeAssetClassEnum FLOW =
      _$flowAssetTypeAssetClassEnum_FLOW;

  static Serializer<FlowAssetTypeAssetClassEnum> get serializer =>
      _$flowAssetTypeAssetClassEnumSerializer;

  const FlowAssetTypeAssetClassEnum._(String name) : super(name);

  static BuiltSet<FlowAssetTypeAssetClassEnum> get values =>
      _$flowAssetTypeAssetClassEnumValues;
  static FlowAssetTypeAssetClassEnum valueOf(String name) =>
      _$flowAssetTypeAssetClassEnumValueOf(name);
}
