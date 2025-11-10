//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_activity_match_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity_cancel_bid.dart';
import 'package:seek_backend/src/model/order_activity_cancel_list.dart';
import 'package:seek_backend/src/model/order_activity_list.dart';
import 'package:seek_backend/src/model/order_activity_bid.dart';
import 'package:seek_backend/src/model/order_activity_match.dart';
import 'package:seek_backend/src/model/asset_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_activity.g.dart';

/// OrderActivity
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
/// * [priceUsd]
@BuiltValue()
abstract class OrderActivity
    implements Built<OrderActivity, OrderActivityBuilder> {
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'source')
  OrderActivitySource_Enum get source_;
  // enum source_Enum {  RARIBLE,  OPEN_SEA,  };

  @BuiltValueField(wireName: r'id')
  String get id;

  /// One Of [OrderActivityBid], [OrderActivityCancelBid], [OrderActivityCancelList], [OrderActivityList], [OrderActivityMatch]
  OneOf get oneOf;

  OrderActivity._();

  factory OrderActivity([void updates(OrderActivityBuilder b)]) =
      _$OrderActivity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivity> get serializer =>
      _$OrderActivitySerializer();
}

class _$OrderActivitySerializer implements PrimitiveSerializer<OrderActivity> {
  @override
  final Iterable<Type> types = const [OrderActivity, _$OrderActivity];

  @override
  final String wireName = r'OrderActivity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'source';
    yield serializers.serialize(
      object.source_,
      specifiedType: const FullType(OrderActivitySource_Enum),
    );
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
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
    required OrderActivityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivitySource_Enum),
          ) as OrderActivitySource_Enum;
          result.source_ = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderActivity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(OrderActivityMatch),
      FullType(OrderActivityBid),
      FullType(OrderActivityList),
      FullType(OrderActivityCancelBid),
      FullType(OrderActivityCancelList),
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

class OrderActivitySource_Enum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE')
  static const OrderActivitySource_Enum RARIBLE =
      _$orderActivitySourceEnum_RARIBLE;
  @BuiltValueEnumConst(wireName: r'OPEN_SEA')
  static const OrderActivitySource_Enum OPEN_SEA =
      _$orderActivitySourceEnum_OPEN_SEA;

  static Serializer<OrderActivitySource_Enum> get serializer =>
      _$orderActivitySourceEnumSerializer;

  const OrderActivitySource_Enum._(String name) : super(name);

  static BuiltSet<OrderActivitySource_Enum> get values =>
      _$orderActivitySourceEnumValues;
  static OrderActivitySource_Enum valueOf(String name) =>
      _$orderActivitySourceEnumValueOf(name);
}

class OrderActivityAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'cancel_list')
  static const OrderActivityAtTypeEnum cancelList =
      _$orderActivityAtTypeEnum_cancelList;

  static Serializer<OrderActivityAtTypeEnum> get serializer =>
      _$orderActivityAtTypeEnumSerializer;

  const OrderActivityAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityAtTypeEnum> get values =>
      _$orderActivityAtTypeEnumValues;
  static OrderActivityAtTypeEnum valueOf(String name) =>
      _$orderActivityAtTypeEnumValueOf(name);
}
