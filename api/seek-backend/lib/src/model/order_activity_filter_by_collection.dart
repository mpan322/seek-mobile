//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity_filter_by_collection_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_filter_by_collection.g.dart';

/// OrderActivityFilterByCollection
///
/// Properties:
/// * [atType]
/// * [contract]
/// * [types]
@BuiltValue()
abstract class OrderActivityFilterByCollection
    implements
        Built<OrderActivityFilterByCollection,
            OrderActivityFilterByCollectionBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderActivityFilterByCollectionAtTypeEnum get atType;
  // enum atTypeEnum {  by_collection,  };

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'types')
  BuiltList<OrderActivityFilterByCollectionTypes> get types;

  OrderActivityFilterByCollection._();

  factory OrderActivityFilterByCollection(
          [void updates(OrderActivityFilterByCollectionBuilder b)]) =
      _$OrderActivityFilterByCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityFilterByCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityFilterByCollection> get serializer =>
      _$OrderActivityFilterByCollectionSerializer();
}

class _$OrderActivityFilterByCollectionSerializer
    implements PrimitiveSerializer<OrderActivityFilterByCollection> {
  @override
  final Iterable<Type> types = const [
    OrderActivityFilterByCollection,
    _$OrderActivityFilterByCollection
  ];

  @override
  final String wireName = r'OrderActivityFilterByCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityFilterByCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderActivityFilterByCollectionAtTypeEnum),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
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
    OrderActivityFilterByCollection object, {
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
    required OrderActivityFilterByCollectionBuilder result,
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
                const FullType(OrderActivityFilterByCollectionAtTypeEnum),
          ) as OrderActivityFilterByCollectionAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
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
  OrderActivityFilterByCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityFilterByCollectionBuilder();
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

class OrderActivityFilterByCollectionAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_collection')
  static const OrderActivityFilterByCollectionAtTypeEnum byCollection =
      _$orderActivityFilterByCollectionAtTypeEnum_byCollection;

  static Serializer<OrderActivityFilterByCollectionAtTypeEnum> get serializer =>
      _$orderActivityFilterByCollectionAtTypeEnumSerializer;

  const OrderActivityFilterByCollectionAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityFilterByCollectionAtTypeEnum> get values =>
      _$orderActivityFilterByCollectionAtTypeEnumValues;
  static OrderActivityFilterByCollectionAtTypeEnum valueOf(String name) =>
      _$orderActivityFilterByCollectionAtTypeEnumValueOf(name);
}
