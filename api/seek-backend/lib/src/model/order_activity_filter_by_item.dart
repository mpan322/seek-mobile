//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity_filter_by_collection_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_filter_by_item.g.dart';

/// OrderActivityFilterByItem
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [tokenId]
/// * [types]
@BuiltValue()
abstract class OrderActivityFilterByItem
    implements
        Built<OrderActivityFilterByItem, OrderActivityFilterByItemBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderActivityFilterByItemAtTypeEnum get atType;
  // enum atTypeEnum {  by_item,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'types')
  BuiltList<OrderActivityFilterByCollectionTypes> get types;

  OrderActivityFilterByItem._();

  factory OrderActivityFilterByItem(
          [void updates(OrderActivityFilterByItemBuilder b)]) =
      _$OrderActivityFilterByItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityFilterByItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityFilterByItem> get serializer =>
      _$OrderActivityFilterByItemSerializer();
}

class _$OrderActivityFilterByItemSerializer
    implements PrimitiveSerializer<OrderActivityFilterByItem> {
  @override
  final Iterable<Type> types = const [
    OrderActivityFilterByItem,
    _$OrderActivityFilterByItem
  ];

  @override
  final String wireName = r'OrderActivityFilterByItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityFilterByItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderActivityFilterByItemAtTypeEnum),
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
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType: const FullType(
          BuiltList, [FullType(OrderActivityFilterByCollectionTypes)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderActivityFilterByItem object, {
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
    required OrderActivityFilterByItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityFilterByItemAtTypeEnum),
          ) as OrderActivityFilterByItemAtTypeEnum;
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
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(
                BuiltList, [FullType(OrderActivityFilterByCollectionTypes)]),
          ) as BuiltList<OrderActivityFilterByCollectionTypes>;
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
  OrderActivityFilterByItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityFilterByItemBuilder();
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

class OrderActivityFilterByItemAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_item')
  static const OrderActivityFilterByItemAtTypeEnum byItem =
      _$orderActivityFilterByItemAtTypeEnum_byItem;

  static Serializer<OrderActivityFilterByItemAtTypeEnum> get serializer =>
      _$orderActivityFilterByItemAtTypeEnumSerializer;

  const OrderActivityFilterByItemAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityFilterByItemAtTypeEnum> get values =>
      _$orderActivityFilterByItemAtTypeEnumValues;
  static OrderActivityFilterByItemAtTypeEnum valueOf(String name) =>
      _$orderActivityFilterByItemAtTypeEnumValueOf(name);
}
