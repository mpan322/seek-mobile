//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_activity_filter_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_activity_filter_by_collection.g.dart';

/// NftActivityFilterByCollection
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [types]
@BuiltValue()
abstract class NftActivityFilterByCollection
    implements
        Built<NftActivityFilterByCollection,
            NftActivityFilterByCollectionBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftActivityFilterByCollectionAtTypeEnum get atType;
  // enum atTypeEnum {  by_collection,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'types')
  BuiltList<NftActivityFilterTypes> get types;

  NftActivityFilterByCollection._();

  factory NftActivityFilterByCollection(
          [void updates(NftActivityFilterByCollectionBuilder b)]) =
      _$NftActivityFilterByCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivityFilterByCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivityFilterByCollection> get serializer =>
      _$NftActivityFilterByCollectionSerializer();
}

class _$NftActivityFilterByCollectionSerializer
    implements PrimitiveSerializer<NftActivityFilterByCollection> {
  @override
  final Iterable<Type> types = const [
    NftActivityFilterByCollection,
    _$NftActivityFilterByCollection
  ];

  @override
  final String wireName = r'NftActivityFilterByCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivityFilterByCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftActivityFilterByCollectionAtTypeEnum),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
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
    NftActivityFilterByCollection object, {
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
    required NftActivityFilterByCollectionBuilder result,
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
                const FullType(NftActivityFilterByCollectionAtTypeEnum),
          ) as NftActivityFilterByCollectionAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
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
  NftActivityFilterByCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivityFilterByCollectionBuilder();
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

class NftActivityFilterByCollectionAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const NftActivityFilterByCollectionAtTypeEnum byCollection =
      _$nftActivityFilterByCollectionAtTypeEnum_byCollection;

  static Serializer<NftActivityFilterByCollectionAtTypeEnum> get serializer =>
      _$nftActivityFilterByCollectionAtTypeEnumSerializer;

  const NftActivityFilterByCollectionAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftActivityFilterByCollectionAtTypeEnum> get values =>
      _$nftActivityFilterByCollectionAtTypeEnumValues;
  static NftActivityFilterByCollectionAtTypeEnum valueOf(String name) =>
      _$nftActivityFilterByCollectionAtTypeEnumValueOf(name);
}
