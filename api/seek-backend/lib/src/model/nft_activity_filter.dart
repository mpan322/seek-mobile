//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_activity_filter_by_user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_activity_filter_all.dart';
import 'package:seek_backend/src/model/nft_activity_filter_by_collection.dart';
import 'package:seek_backend/src/model/nft_activity_filter_by_item.dart';
import 'package:seek_backend/src/model/nft_activity_filter_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_activity_filter.g.dart';

/// NftActivityFilter
///
/// Properties:
/// * [atType]
/// * [types]
/// * [users]
/// * [contract]
/// * [tokenId]
@BuiltValue()
abstract class NftActivityFilter
    implements Built<NftActivityFilter, NftActivityFilterBuilder> {
  /// One Of [NftActivityFilterAll], [NftActivityFilterByCollection], [NftActivityFilterByItem], [NftActivityFilterByUser]
  OneOf get oneOf;

  NftActivityFilter._();

  factory NftActivityFilter([void updates(NftActivityFilterBuilder b)]) =
      _$NftActivityFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivityFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivityFilter> get serializer =>
      _$NftActivityFilterSerializer();
}

class _$NftActivityFilterSerializer
    implements PrimitiveSerializer<NftActivityFilter> {
  @override
  final Iterable<Type> types = const [NftActivityFilter, _$NftActivityFilter];

  @override
  final String wireName = r'NftActivityFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    NftActivityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  NftActivityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivityFilterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(NftActivityFilterAll),
      FullType(NftActivityFilterByUser),
      FullType(NftActivityFilterByItem),
      FullType(NftActivityFilterByCollection),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class NftActivityFilterAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const NftActivityFilterAtTypeEnum byCollection =
      _$nftActivityFilterAtTypeEnum_byCollection;

  static Serializer<NftActivityFilterAtTypeEnum> get serializer =>
      _$nftActivityFilterAtTypeEnumSerializer;

  const NftActivityFilterAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftActivityFilterAtTypeEnum> get values =>
      _$nftActivityFilterAtTypeEnumValues;
  static NftActivityFilterAtTypeEnum valueOf(String name) =>
      _$nftActivityFilterAtTypeEnumValueOf(name);
}
