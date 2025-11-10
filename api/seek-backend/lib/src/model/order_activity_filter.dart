//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_activity_filter_by_user.dart';
import 'package:seek_backend/src/model/order_activity_filter_all.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity_filter_by_collection.dart';
import 'package:seek_backend/src/model/order_activity_filter_by_item.dart';
import 'package:seek_backend/src/model/order_activity_filter_by_collection_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_activity_filter.g.dart';

/// OrderActivityFilter
///
/// Properties:
/// * [atType]
/// * [types]
/// * [users]
/// * [contract]
/// * [tokenId]
@BuiltValue()
abstract class OrderActivityFilter
    implements Built<OrderActivityFilter, OrderActivityFilterBuilder> {
  /// One Of [OrderActivityFilterAll], [OrderActivityFilterByCollection], [OrderActivityFilterByItem], [OrderActivityFilterByUser]
  OneOf get oneOf;

  OrderActivityFilter._();

  factory OrderActivityFilter([void updates(OrderActivityFilterBuilder b)]) =
      _$OrderActivityFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityFilter> get serializer =>
      _$OrderActivityFilterSerializer();
}

class _$OrderActivityFilterSerializer
    implements PrimitiveSerializer<OrderActivityFilter> {
  @override
  final Iterable<Type> types = const [
    OrderActivityFilter,
    _$OrderActivityFilter
  ];

  @override
  final String wireName = r'OrderActivityFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    OrderActivityFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  OrderActivityFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityFilterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(OrderActivityFilterAll),
      FullType(OrderActivityFilterByUser),
      FullType(OrderActivityFilterByItem),
      FullType(OrderActivityFilterByCollection),
    ]);
    oneOfDataSrc = serialized;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class OrderActivityFilterAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const OrderActivityFilterAtTypeEnum byCollection =
      _$orderActivityFilterAtTypeEnum_byCollection;

  static Serializer<OrderActivityFilterAtTypeEnum> get serializer =>
      _$orderActivityFilterAtTypeEnumSerializer;

  const OrderActivityFilterAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityFilterAtTypeEnum> get values =>
      _$orderActivityFilterAtTypeEnumValues;
  static OrderActivityFilterAtTypeEnum valueOf(String name) =>
      _$orderActivityFilterAtTypeEnumValueOf(name);
}
