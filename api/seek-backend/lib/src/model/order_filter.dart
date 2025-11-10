//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_filter_bid_by_maker.dart';
import 'package:seek_backend/src/model/order_filter_all.dart';
import 'package:seek_backend/src/model/order_filter_sell.dart';
import 'package:seek_backend/src/model/order_filter_sell_by_maker.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_filter_sell_by_collection.dart';
import 'package:seek_backend/src/model/order_filter_sell_by_item.dart';
import 'package:seek_backend/src/model/platform.dart';
import 'package:seek_backend/src/model/order_filter_bid_by_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_filter.g.dart';

/// OrderFilter
///
/// Properties:
/// * [sort]
/// * [atType]
/// * [contract]
/// * [tokenId]
/// * [maker]
/// * [collection]
/// * [origin]
/// * [platform]
@BuiltValue()
abstract class OrderFilter implements Built<OrderFilter, OrderFilterBuilder> {
  @BuiltValueField(wireName: r'origin')
  String? get origin;

  @BuiltValueField(wireName: r'sort')
  OrderFilterSortEnum get sort;
  // enum sortEnum {  LAST_UPDATE,  TAKE_PRICE_DESC,  MAKE_PRICE_ASC,  };

  @BuiltValueField(wireName: r'platform')
  Platform? get platform;
  // enum platformEnum {  ALL,  RARIBLE,  OPEN_SEA,  };

  /// One Of [OrderFilterAll], [OrderFilterBidByItem], [OrderFilterBidByMaker], [OrderFilterSell], [OrderFilterSellByCollection], [OrderFilterSellByItem], [OrderFilterSellByMaker]
  OneOf get oneOf;

  OrderFilter._();

  factory OrderFilter([void updates(OrderFilterBuilder b)]) = _$OrderFilter;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilter> get serializer => _$OrderFilterSerializer();
}

class _$OrderFilterSerializer implements PrimitiveSerializer<OrderFilter> {
  @override
  final Iterable<Type> types = const [OrderFilter, _$OrderFilter];

  @override
  final String wireName = r'OrderFilter';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilter object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.platform != null) {
      yield r'platform';
      yield serializers.serialize(
        object.platform,
        specifiedType: const FullType(Platform),
      );
    }
    if (object.origin != null) {
      yield r'origin';
      yield serializers.serialize(
        object.origin,
        specifiedType: const FullType(String),
      );
    }
    yield r'sort';
    yield serializers.serialize(
      object.sort,
      specifiedType: const FullType(OrderFilterSortEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderFilter object, {
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
    required OrderFilterBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Platform),
          ) as Platform;
          result.platform = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'sort':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderFilterSortEnum),
          ) as OrderFilterSortEnum;
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
  OrderFilter deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(OrderFilterAll),
      FullType(OrderFilterSell),
      FullType(OrderFilterSellByItem),
      FullType(OrderFilterSellByCollection),
      FullType(OrderFilterSellByMaker),
      FullType(OrderFilterBidByItem),
      FullType(OrderFilterBidByMaker),
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

class OrderFilterSortEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LAST_UPDATE')
  static const OrderFilterSortEnum LAST_UPDATE =
      _$orderFilterSortEnum_LAST_UPDATE;
  @BuiltValueEnumConst(wireName: r'TAKE_PRICE_DESC')
  static const OrderFilterSortEnum TAKE_PRICE_DESC =
      _$orderFilterSortEnum_TAKE_PRICE_DESC;
  @BuiltValueEnumConst(wireName: r'MAKE_PRICE_ASC')
  static const OrderFilterSortEnum MAKE_PRICE_ASC =
      _$orderFilterSortEnum_MAKE_PRICE_ASC;

  static Serializer<OrderFilterSortEnum> get serializer =>
      _$orderFilterSortEnumSerializer;

  const OrderFilterSortEnum._(String name) : super(name);

  static BuiltSet<OrderFilterSortEnum> get values =>
      _$orderFilterSortEnumValues;
  static OrderFilterSortEnum valueOf(String name) =>
      _$orderFilterSortEnumValueOf(name);
}

class OrderFilterAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bid_by_maker')
  static const OrderFilterAtTypeEnum bidByMaker =
      _$orderFilterAtTypeEnum_bidByMaker;

  static Serializer<OrderFilterAtTypeEnum> get serializer =>
      _$orderFilterAtTypeEnumSerializer;

  const OrderFilterAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterAtTypeEnum> get values =>
      _$orderFilterAtTypeEnumValues;
  static OrderFilterAtTypeEnum valueOf(String name) =>
      _$orderFilterAtTypeEnumValueOf(name);
}
