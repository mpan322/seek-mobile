//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_filter_by_item.g.dart';

/// NftOwnershipFilterByItem
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [tokenId]
@BuiltValue()
abstract class NftOwnershipFilterByItem
    implements
        Built<NftOwnershipFilterByItem, NftOwnershipFilterByItemBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftOwnershipFilterByItemAtTypeEnum get atType;
  // enum atTypeEnum {  by_item,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  NftOwnershipFilterByItem._();

  factory NftOwnershipFilterByItem(
          [void updates(NftOwnershipFilterByItemBuilder b)]) =
      _$NftOwnershipFilterByItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipFilterByItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipFilterByItem> get serializer =>
      _$NftOwnershipFilterByItemSerializer();
}

class _$NftOwnershipFilterByItemSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByItem> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipFilterByItem,
    _$NftOwnershipFilterByItem
  ];

  @override
  final String wireName = r'NftOwnershipFilterByItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipFilterByItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftOwnershipFilterByItemAtTypeEnum),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnershipFilterByItem object, {
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
    required NftOwnershipFilterByItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnershipFilterByItemAtTypeEnum),
          ) as NftOwnershipFilterByItemAtTypeEnum;
          result.atType = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOwnershipFilterByItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipFilterByItemBuilder();
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

class NftOwnershipFilterByItemAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_item')
  static const NftOwnershipFilterByItemAtTypeEnum byItem =
      _$nftOwnershipFilterByItemAtTypeEnum_byItem;

  static Serializer<NftOwnershipFilterByItemAtTypeEnum> get serializer =>
      _$nftOwnershipFilterByItemAtTypeEnumSerializer;

  const NftOwnershipFilterByItemAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterByItemAtTypeEnum> get values =>
      _$nftOwnershipFilterByItemAtTypeEnumValues;
  static NftOwnershipFilterByItemAtTypeEnum valueOf(String name) =>
      _$nftOwnershipFilterByItemAtTypeEnumValueOf(name);
}
