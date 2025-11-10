//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/asset_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'asset.g.dart';

/// Asset
///
/// Properties:
/// * [assetType]
/// * [value]
@BuiltValue()
abstract class Asset implements Built<Asset, AssetBuilder> {
  @BuiltValueField(wireName: r'assetType')
  AssetType get assetType;

  @BuiltValueField(wireName: r'value')
  String get value;

  Asset._();

  factory Asset([void updates(AssetBuilder b)]) = _$Asset;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AssetBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Asset> get serializer => _$AssetSerializer();
}

class _$AssetSerializer implements PrimitiveSerializer<Asset> {
  @override
  final Iterable<Type> types = const [Asset, _$Asset];

  @override
  final String wireName = r'Asset';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Asset object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'assetType';
    yield serializers.serialize(
      object.assetType,
      specifiedType: const FullType(AssetType),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Asset object, {
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
    required AssetBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'assetType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssetType),
          ) as AssetType;
          result.assetType.replace(valueDes);
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
  Asset deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AssetBuilder();
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
