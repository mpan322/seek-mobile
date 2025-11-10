//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'item_royalty.g.dart';

/// ItemRoyalty
///
/// Properties:
/// * [type]
/// * [royalties]
@BuiltValue()
abstract class ItemRoyalty implements Built<ItemRoyalty, ItemRoyaltyBuilder> {
  @BuiltValueField(wireName: r'type')
  ItemRoyaltyTypeEnum get type;
  // enum typeEnum {  ROYALTY,  };

  @BuiltValueField(wireName: r'royalties')
  BuiltList<ModelPart> get royalties;

  ItemRoyalty._();

  factory ItemRoyalty([void updates(ItemRoyaltyBuilder b)]) = _$ItemRoyalty;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ItemRoyaltyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ItemRoyalty> get serializer => _$ItemRoyaltySerializer();
}

class _$ItemRoyaltySerializer implements PrimitiveSerializer<ItemRoyalty> {
  @override
  final Iterable<Type> types = const [ItemRoyalty, _$ItemRoyalty];

  @override
  final String wireName = r'ItemRoyalty';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ItemRoyalty object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(ItemRoyaltyTypeEnum),
    );
    yield r'royalties';
    yield serializers.serialize(
      object.royalties,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ItemRoyalty object, {
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
    required ItemRoyaltyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ItemRoyaltyTypeEnum),
          ) as ItemRoyaltyTypeEnum;
          result.type = valueDes;
          break;
        case r'royalties':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.royalties.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ItemRoyalty deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ItemRoyaltyBuilder();
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

class ItemRoyaltyTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ROYALTY')
  static const ItemRoyaltyTypeEnum ROYALTY = _$itemRoyaltyTypeEnum_ROYALTY;

  static Serializer<ItemRoyaltyTypeEnum> get serializer =>
      _$itemRoyaltyTypeEnumSerializer;

  const ItemRoyaltyTypeEnum._(String name) : super(name);

  static BuiltSet<ItemRoyaltyTypeEnum> get values =>
      _$itemRoyaltyTypeEnumValues;
  static ItemRoyaltyTypeEnum valueOf(String name) =>
      _$itemRoyaltyTypeEnumValueOf(name);
}
