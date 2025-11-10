//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity_filter_by_collection_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_filter_all.g.dart';

/// OrderActivityFilterAll
///
/// Properties:
/// * [atType]
/// * [types]
@BuiltValue()
abstract class OrderActivityFilterAll
    implements Built<OrderActivityFilterAll, OrderActivityFilterAllBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderActivityFilterAllAtTypeEnum get atType;
  // enum atTypeEnum {  all,  };

  @BuiltValueField(wireName: r'types')
  BuiltList<OrderActivityFilterByCollectionTypes> get types;

  OrderActivityFilterAll._();

  factory OrderActivityFilterAll(
          [void updates(OrderActivityFilterAllBuilder b)]) =
      _$OrderActivityFilterAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityFilterAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityFilterAll> get serializer =>
      _$OrderActivityFilterAllSerializer();
}

class _$OrderActivityFilterAllSerializer
    implements PrimitiveSerializer<OrderActivityFilterAll> {
  @override
  final Iterable<Type> types = const [
    OrderActivityFilterAll,
    _$OrderActivityFilterAll
  ];

  @override
  final String wireName = r'OrderActivityFilterAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderActivityFilterAllAtTypeEnum),
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
    OrderActivityFilterAll object, {
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
    required OrderActivityFilterAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityFilterAllAtTypeEnum),
          ) as OrderActivityFilterAllAtTypeEnum;
          result.atType = valueDes;
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
  OrderActivityFilterAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityFilterAllBuilder();
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

class OrderActivityFilterAllAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const OrderActivityFilterAllAtTypeEnum all =
      _$orderActivityFilterAllAtTypeEnum_all;

  static Serializer<OrderActivityFilterAllAtTypeEnum> get serializer =>
      _$orderActivityFilterAllAtTypeEnumSerializer;

  const OrderActivityFilterAllAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityFilterAllAtTypeEnum> get values =>
      _$orderActivityFilterAllAtTypeEnumValues;
  static OrderActivityFilterAllAtTypeEnum valueOf(String name) =>
      _$orderActivityFilterAllAtTypeEnumValueOf(name);
}
