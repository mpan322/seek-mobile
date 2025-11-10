//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_activity.dart';
import 'package:seek_backend/src/model/order_activity_match_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity.dart';
import 'package:seek_backend/src/model/asset_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'activity.g.dart';

/// Activity
///
/// Properties:
/// * [id]
/// * [date]
/// * [source_]
/// * [atType]
/// * [left]
/// * [right]
/// * [price]
/// * [transactionHash]
/// * [blockHash]
/// * [blockNumber]
/// * [logIndex]
/// * [hash]
/// * [maker]
/// * [make]
/// * [take]
/// * [owner]
/// * [contract]
/// * [tokenId]
/// * [value]
/// * [from]
/// * [priceUsd]
@BuiltValue()
abstract class Activity implements Built<Activity, ActivityBuilder> {
  /// One Of [NftActivity], [OrderActivity]
  OneOf get oneOf;

  Activity._();

  factory Activity([void updates(ActivityBuilder b)]) = _$Activity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Activity> get serializer => _$ActivitySerializer();
}

class _$ActivitySerializer implements PrimitiveSerializer<Activity> {
  @override
  final Iterable<Type> types = const [Activity, _$Activity];

  @override
  final String wireName = r'Activity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Activity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    Activity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Activity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(OrderActivity),
      FullType(NftActivity),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class ActivitySource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE')
  static const ActivitySource_Enum RARIBLE = _$activitySourceEnum_RARIBLE;
  @BuiltValueEnumConst(wireName: r'OPEN_SEA')
  static const ActivitySource_Enum OPEN_SEA = _$activitySourceEnum_OPEN_SEA;

  static Serializer<ActivitySource_Enum> get serializer =>
      _$activitySourceEnumSerializer;

  const ActivitySource_Enum._(String name) : super(name);

  static BuiltSet<ActivitySource_Enum> get values => _$activitySourceEnumValues;
  static ActivitySource_Enum valueOf(String name) =>
      _$activitySourceEnumValueOf(name);
}

class ActivityAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'transfer')
  static const ActivityAtTypeEnum transfer = _$activityAtTypeEnum_transfer;

  static Serializer<ActivityAtTypeEnum> get serializer =>
      _$activityAtTypeEnumSerializer;

  const ActivityAtTypeEnum._(String name) : super(name);

  static BuiltSet<ActivityAtTypeEnum> get values => _$activityAtTypeEnumValues;
  static ActivityAtTypeEnum valueOf(String name) =>
      _$activityAtTypeEnumValueOf(name);
}
