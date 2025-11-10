//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_filter_by_collection.g.dart';

/// NftOwnershipFilterByCollection
///
/// Properties:
/// * [atType]
/// * [collection]
@BuiltValue()
abstract class NftOwnershipFilterByCollection
    implements
        Built<NftOwnershipFilterByCollection,
            NftOwnershipFilterByCollectionBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftOwnershipFilterByCollectionAtTypeEnum get atType;
  // enum atTypeEnum {  by_collection,  };

  @BuiltValueField(wireName: r'collection')
  String get collection;

  NftOwnershipFilterByCollection._();

  factory NftOwnershipFilterByCollection(
          [void updates(NftOwnershipFilterByCollectionBuilder b)]) =
      _$NftOwnershipFilterByCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipFilterByCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipFilterByCollection> get serializer =>
      _$NftOwnershipFilterByCollectionSerializer();
}

class _$NftOwnershipFilterByCollectionSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByCollection> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipFilterByCollection,
    _$NftOwnershipFilterByCollection
  ];

  @override
  final String wireName = r'NftOwnershipFilterByCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipFilterByCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftOwnershipFilterByCollectionAtTypeEnum),
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
    NftOwnershipFilterByCollection object, {
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
    required NftOwnershipFilterByCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(NftOwnershipFilterByCollectionAtTypeEnum),
          ) as NftOwnershipFilterByCollectionAtTypeEnum;
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
  NftOwnershipFilterByCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipFilterByCollectionBuilder();
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

class NftOwnershipFilterByCollectionAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const NftOwnershipFilterByCollectionAtTypeEnum byCollection =
      _$nftOwnershipFilterByCollectionAtTypeEnum_byCollection;

  static Serializer<NftOwnershipFilterByCollectionAtTypeEnum> get serializer =>
      _$nftOwnershipFilterByCollectionAtTypeEnumSerializer;

  const NftOwnershipFilterByCollectionAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterByCollectionAtTypeEnum> get values =>
      _$nftOwnershipFilterByCollectionAtTypeEnumValues;
  static NftOwnershipFilterByCollectionAtTypeEnum valueOf(String name) =>
      _$nftOwnershipFilterByCollectionAtTypeEnumValueOf(name);
}
