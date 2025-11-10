//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/activity_filter_by_collection.dart';
import 'package:seek_backend/src/model/activity_filter_by_user.dart';
import 'package:seek_backend/src/model/activity_types.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/activity_filter_all.dart';
import 'package:seek_backend/src/model/activity_filter_by_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'activity_filter.g.dart';

/// ActivityFilter
///
/// Properties:
/// * [atType]
/// * [types]
/// * [users]
/// * [contract]
/// * [tokenId]
@BuiltValue()
abstract class ActivityFilter
    implements Built<ActivityFilter, ActivityFilterBuilder> {
  /// One Of [ActivityFilterAll], [ActivityFilterByCollection], [ActivityFilterByItem], [ActivityFilterByUser]
  OneOf get oneOf;

  ActivityFilter._();

  factory ActivityFilter([void updates(ActivityFilterBuilder b)]) =
      _$ActivityFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityFilter> get serializer =>
      _$ActivityFilterSerializer();
}

class _$ActivityFilterSerializer
    implements PrimitiveSerializer<ActivityFilter> {
  @override
  final Iterable<Type> types = const [ActivityFilter, _$ActivityFilter];

  @override
  final String wireName = r'ActivityFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ActivityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  ActivityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityFilterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(ActivityFilterAll),
      FullType(ActivityFilterByUser),
      FullType(ActivityFilterByItem),
      FullType(ActivityFilterByCollection),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class ActivityFilterAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const ActivityFilterAtTypeEnum byCollection =
      _$activityFilterAtTypeEnum_byCollection;

  static Serializer<ActivityFilterAtTypeEnum> get serializer =>
      _$activityFilterAtTypeEnumSerializer;

  const ActivityFilterAtTypeEnum._(String name) : super(name);

  static BuiltSet<ActivityFilterAtTypeEnum> get values =>
      _$activityFilterAtTypeEnumValues;
  static ActivityFilterAtTypeEnum valueOf(String name) =>
      _$activityFilterAtTypeEnumValueOf(name);
}
