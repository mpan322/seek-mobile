//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_activity_filter_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_activity_filter_by_item.g.dart';

/// NftActivityFilterByItem
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [tokenId]
/// * [types]
@BuiltValue()
abstract class NftActivityFilterByItem
    implements Built<NftActivityFilterByItem, NftActivityFilterByItemBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftActivityFilterByItemAtTypeEnum get atType;
  // enum atTypeEnum {  by_item,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'types')
  BuiltList<NftActivityFilterTypes> get types;

  NftActivityFilterByItem._();

  factory NftActivityFilterByItem(
          [void updates(NftActivityFilterByItemBuilder b)]) =
      _$NftActivityFilterByItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivityFilterByItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivityFilterByItem> get serializer =>
      _$NftActivityFilterByItemSerializer();
}

class _$NftActivityFilterByItemSerializer
    implements PrimitiveSerializer<NftActivityFilterByItem> {
  @override
  final Iterable<Type> types = const [
    NftActivityFilterByItem,
    _$NftActivityFilterByItem
  ];

  @override
  final String wireName = r'NftActivityFilterByItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivityFilterByItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftActivityFilterByItemAtTypeEnum),
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
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType:
          const FullType(BuiltList, [FullType(NftActivityFilterTypes)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftActivityFilterByItem object, {
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
    required NftActivityFilterByItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftActivityFilterByItemAtTypeEnum),
          ) as NftActivityFilterByItemAtTypeEnum;
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
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NftActivityFilterTypes)]),
          ) as BuiltList<NftActivityFilterTypes>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftActivityFilterByItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivityFilterByItemBuilder();
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

class NftActivityFilterByItemAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_item')
  static const NftActivityFilterByItemAtTypeEnum byItem =
      _$nftActivityFilterByItemAtTypeEnum_byItem;

  static Serializer<NftActivityFilterByItemAtTypeEnum> get serializer =>
      _$nftActivityFilterByItemAtTypeEnumSerializer;

  const NftActivityFilterByItemAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftActivityFilterByItemAtTypeEnum> get values =>
      _$nftActivityFilterByItemAtTypeEnumValues;
  static NftActivityFilterByItemAtTypeEnum valueOf(String name) =>
      _$nftActivityFilterByItemAtTypeEnumValueOf(name);
}
