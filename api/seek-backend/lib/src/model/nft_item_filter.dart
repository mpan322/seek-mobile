//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_item_filter_all.dart';
import 'package:seek_backend/src/model/nft_item_filter_by_collection.dart';
import 'package:seek_backend/src/model/nft_item_filter_by_owner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_item_filter_by_creator.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_item_filter.g.dart';

/// NftItemFilter
///
/// Properties:
/// * [sort]
/// * [atType]
/// * [showDeleted]
/// * [owner]
/// * [creator]
/// * [collection]
/// * [lastUpdatedFrom]
@BuiltValue()
abstract class NftItemFilter
    implements Built<NftItemFilter, NftItemFilterBuilder> {
  @BuiltValueField(wireName: r'sort')
  NftItemFilterSortEnum get sort;
  // enum sortEnum {  LAST_UPDATE,  };

  /// One Of [NftItemFilterAll], [NftItemFilterByCollection], [NftItemFilterByCreator], [NftItemFilterByOwner]
  OneOf get oneOf;

  NftItemFilter._();

  factory NftItemFilter([void updates(NftItemFilterBuilder b)]) =
      _$NftItemFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemFilter> get serializer =>
      _$NftItemFilterSerializer();
}

class _$NftItemFilterSerializer implements PrimitiveSerializer<NftItemFilter> {
  @override
  final Iterable<Type> types = const [NftItemFilter, _$NftItemFilter];

  @override
  final String wireName = r'NftItemFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'sort';
    yield serializers.serialize(
      object.sort,
      specifiedType: const FullType(NftItemFilterSortEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemFilter object, {
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
    required NftItemFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemFilterSortEnum),
          ) as NftItemFilterSortEnum;
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
  NftItemFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemFilterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(NftItemFilterAll),
      FullType(NftItemFilterByOwner),
      FullType(NftItemFilterByCreator),
      FullType(NftItemFilterByCollection),
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

class NftItemFilterSortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LAST_UPDATE')
  static const NftItemFilterSortEnum LAST_UPDATE =
      _$nftItemFilterSortEnum_LAST_UPDATE;

  static Serializer<NftItemFilterSortEnum> get serializer =>
      _$nftItemFilterSortEnumSerializer;

  const NftItemFilterSortEnum._(String name) : super(name);

  static BuiltSet<NftItemFilterSortEnum> get values =>
      _$nftItemFilterSortEnumValues;
  static NftItemFilterSortEnum valueOf(String name) =>
      _$nftItemFilterSortEnumValueOf(name);
}

class NftItemFilterAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const NftItemFilterAtTypeEnum byCollection =
      _$nftItemFilterAtTypeEnum_byCollection;

  static Serializer<NftItemFilterAtTypeEnum> get serializer =>
      _$nftItemFilterAtTypeEnumSerializer;

  const NftItemFilterAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemFilterAtTypeEnum> get values =>
      _$nftItemFilterAtTypeEnumValues;
  static NftItemFilterAtTypeEnum valueOf(String name) =>
      _$nftItemFilterAtTypeEnumValueOf(name);
}
