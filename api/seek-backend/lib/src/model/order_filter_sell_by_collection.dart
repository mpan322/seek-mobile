//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_filter_sell_by_collection.g.dart';

/// OrderFilterSellByCollection
///
/// Properties:
/// * [atType]
/// * [collection]
@BuiltValue()
abstract class OrderFilterSellByCollection
    implements
        Built<OrderFilterSellByCollection, OrderFilterSellByCollectionBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderFilterSellByCollectionAtTypeEnum get atType;
  // enum atTypeEnum {  sell_by_collection,  };

  @BuiltValueField(wireName: r'collection')
  String get collection;

  OrderFilterSellByCollection._();

  factory OrderFilterSellByCollection(
          [void updates(OrderFilterSellByCollectionBuilder b)]) =
      _$OrderFilterSellByCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterSellByCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilterSellByCollection> get serializer =>
      _$OrderFilterSellByCollectionSerializer();
}

class _$OrderFilterSellByCollectionSerializer
    implements PrimitiveSerializer<OrderFilterSellByCollection> {
  @override
  final Iterable<Type> types = const [
    OrderFilterSellByCollection,
    _$OrderFilterSellByCollection
  ];

  @override
  final String wireName = r'OrderFilterSellByCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilterSellByCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderFilterSellByCollectionAtTypeEnum),
    );
    yield r'collection';
    yield serializers.serialize(
      object.collection,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderFilterSellByCollection object, {
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
    required OrderFilterSellByCollectionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(OrderFilterSellByCollectionAtTypeEnum),
          ) as OrderFilterSellByCollectionAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'collection':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.collection = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderFilterSellByCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterSellByCollectionBuilder();
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

class OrderFilterSellByCollectionAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sell_by_collection')
  static const OrderFilterSellByCollectionAtTypeEnum sellByCollection =
      _$orderFilterSellByCollectionAtTypeEnum_sellByCollection;

  static Serializer<OrderFilterSellByCollectionAtTypeEnum> get serializer =>
      _$orderFilterSellByCollectionAtTypeEnumSerializer;

  const OrderFilterSellByCollectionAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterSellByCollectionAtTypeEnum> get values =>
      _$orderFilterSellByCollectionAtTypeEnumValues;
  static OrderFilterSellByCollectionAtTypeEnum valueOf(String name) =>
      _$orderFilterSellByCollectionAtTypeEnumValueOf(name);
}
