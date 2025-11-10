//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_ownership_filter_all.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_ownership_filter_by_item.dart';
import 'package:seek_backend/src/model/nft_ownership_filter_by_owner.dart';
import 'package:seek_backend/src/model/nft_ownership_filter_by_creator.dart';
import 'package:seek_backend/src/model/nft_ownership_filter_by_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_ownership_filter.g.dart';

/// NftOwnershipFilter
///
/// Properties:
/// * [sort]
/// * [atType]
/// * [owner]
/// * [creator]
/// * [collection]
/// * [contract]
/// * [tokenId]
@BuiltValue()
abstract class NftOwnershipFilter
    implements Built<NftOwnershipFilter, NftOwnershipFilterBuilder> {
  @BuiltValueField(wireName: r'sort')
  NftOwnershipFilterSortEnum get sort;
  // enum sortEnum {  LAST_UPDATE,  };

  /// One Of [NftOwnershipFilterAll], [NftOwnershipFilterByCollection], [NftOwnershipFilterByCreator], [NftOwnershipFilterByItem], [NftOwnershipFilterByOwner]
  OneOf get oneOf;

  NftOwnershipFilter._();

  factory NftOwnershipFilter([void updates(NftOwnershipFilterBuilder b)]) =
      _$NftOwnershipFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipFilter> get serializer =>
      _$NftOwnershipFilterSerializer();
}

class _$NftOwnershipFilterSerializer
    implements PrimitiveSerializer<NftOwnershipFilter> {
  @override
  final Iterable<Type> types = const [NftOwnershipFilter, _$NftOwnershipFilter];

  @override
  final String wireName = r'NftOwnershipFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sort';
    yield serializers.serialize(
      object.sort,
      specifiedType: const FullType(NftOwnershipFilterSortEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnershipFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NftOwnershipFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnershipFilterSortEnum),
          ) as NftOwnershipFilterSortEnum;
          result.sort = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOwnershipFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipFilterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(NftOwnershipFilterAll),
      FullType(NftOwnershipFilterByOwner),
      FullType(NftOwnershipFilterByCreator),
      FullType(NftOwnershipFilterByCollection),
      FullType(NftOwnershipFilterByItem),
    ]);
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
    oneOfDataSrc = unhandled;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class NftOwnershipFilterSortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LAST_UPDATE')
  static const NftOwnershipFilterSortEnum LAST_UPDATE =
      _$nftOwnershipFilterSortEnum_LAST_UPDATE;

  static Serializer<NftOwnershipFilterSortEnum> get serializer =>
      _$nftOwnershipFilterSortEnumSerializer;

  const NftOwnershipFilterSortEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterSortEnum> get values =>
      _$nftOwnershipFilterSortEnumValues;
  static NftOwnershipFilterSortEnum valueOf(String name) =>
      _$nftOwnershipFilterSortEnumValueOf(name);
}

class NftOwnershipFilterAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_item')
  static const NftOwnershipFilterAtTypeEnum byItem =
      _$nftOwnershipFilterAtTypeEnum_byItem;

  static Serializer<NftOwnershipFilterAtTypeEnum> get serializer =>
      _$nftOwnershipFilterAtTypeEnumSerializer;

  const NftOwnershipFilterAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterAtTypeEnum> get values =>
      _$nftOwnershipFilterAtTypeEnumValues;
  static NftOwnershipFilterAtTypeEnum valueOf(String name) =>
      _$nftOwnershipFilterAtTypeEnumValueOf(name);
}
