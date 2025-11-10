//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_filter_by_collection.g.dart';

/// NftItemFilterByCollection
///
/// Properties:
/// * [atType]
/// * [collection]
@BuiltValue()
abstract class NftItemFilterByCollection
    implements
        Built<NftItemFilterByCollection, NftItemFilterByCollectionBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftItemFilterByCollectionAtTypeEnum get atType;
  // enum atTypeEnum {  by_collection,  };

  @BuiltValueField(wireName: r'collection')
  String get collection;

  NftItemFilterByCollection._();

  factory NftItemFilterByCollection(
          [void updates(NftItemFilterByCollectionBuilder b)]) =
      _$NftItemFilterByCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemFilterByCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemFilterByCollection> get serializer =>
      _$NftItemFilterByCollectionSerializer();
}

class _$NftItemFilterByCollectionSerializer
    implements PrimitiveSerializer<NftItemFilterByCollection> {
  @override
  final Iterable<Type> types = const [
    NftItemFilterByCollection,
    _$NftItemFilterByCollection
  ];

  @override
  final String wireName = r'NftItemFilterByCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemFilterByCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftItemFilterByCollectionAtTypeEnum),
    );
    yield r'collection';
    yield serializers.serialize(
      object.collection,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemFilterByCollection object, {
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
    required NftItemFilterByCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemFilterByCollectionAtTypeEnum),
          ) as NftItemFilterByCollectionAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collection = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftItemFilterByCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemFilterByCollectionBuilder();
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

class NftItemFilterByCollectionAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const NftItemFilterByCollectionAtTypeEnum byCollection =
      _$nftItemFilterByCollectionAtTypeEnum_byCollection;

  static Serializer<NftItemFilterByCollectionAtTypeEnum> get serializer =>
      _$nftItemFilterByCollectionAtTypeEnumSerializer;

  const NftItemFilterByCollectionAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemFilterByCollectionAtTypeEnum> get values =>
      _$nftItemFilterByCollectionAtTypeEnumValues;
  static NftItemFilterByCollectionAtTypeEnum valueOf(String name) =>
      _$nftItemFilterByCollectionAtTypeEnumValueOf(name);
}
