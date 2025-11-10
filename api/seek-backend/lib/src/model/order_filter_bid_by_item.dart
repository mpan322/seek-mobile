//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_filter_bid_by_item.g.dart';

/// OrderFilterBidByItem
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [tokenId]
/// * [maker]
@BuiltValue()
abstract class OrderFilterBidByItem
    implements Built<OrderFilterBidByItem, OrderFilterBidByItemBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderFilterBidByItemAtTypeEnum get atType;
  // enum atTypeEnum {  bid_by_item,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'maker')
  String? get maker;

  OrderFilterBidByItem._();

  factory OrderFilterBidByItem([void updates(OrderFilterBidByItemBuilder b)]) =
      _$OrderFilterBidByItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterBidByItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilterBidByItem> get serializer =>
      _$OrderFilterBidByItemSerializer();
}

class _$OrderFilterBidByItemSerializer
    implements PrimitiveSerializer<OrderFilterBidByItem> {
  @override
  final Iterable<Type> types = const [
    OrderFilterBidByItem,
    _$OrderFilterBidByItem
  ];

  @override
  final String wireName = r'OrderFilterBidByItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilterBidByItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderFilterBidByItemAtTypeEnum),
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
    if (object.maker != null) {
      yield r'maker';
      yield serializers.serialize(
        object.maker,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderFilterBidByItem object, {
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
    required OrderFilterBidByItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderFilterBidByItemAtTypeEnum),
          ) as OrderFilterBidByItemAtTypeEnum;
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
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderFilterBidByItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterBidByItemBuilder();
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

class OrderFilterBidByItemAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bid_by_item')
  static const OrderFilterBidByItemAtTypeEnum bidByItem =
      _$orderFilterBidByItemAtTypeEnum_bidByItem;

  static Serializer<OrderFilterBidByItemAtTypeEnum> get serializer =>
      _$orderFilterBidByItemAtTypeEnumSerializer;

  const OrderFilterBidByItemAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterBidByItemAtTypeEnum> get values =>
      _$orderFilterBidByItemAtTypeEnumValues;
  static OrderFilterBidByItemAtTypeEnum valueOf(String name) =>
      _$orderFilterBidByItemAtTypeEnumValueOf(name);
}
