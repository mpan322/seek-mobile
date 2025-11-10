//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_update_event.g.dart';

/// OrderUpdateEvent
///
/// Properties:
/// * [order]
/// * [type]
@BuiltValue()
abstract class OrderUpdateEvent
    implements Built<OrderUpdateEvent, OrderUpdateEventBuilder> {
  @BuiltValueField(wireName: r'order')
  Order get order;

  @BuiltValueField(wireName: r'type')
  OrderUpdateEventTypeEnum? get type;
  // enum typeEnum {  UPDATE,  };

  OrderUpdateEvent._();

  factory OrderUpdateEvent([void updates(OrderUpdateEventBuilder b)]) =
      _$OrderUpdateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderUpdateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderUpdateEvent> get serializer =>
      _$OrderUpdateEventSerializer();
}

class _$OrderUpdateEventSerializer
    implements PrimitiveSerializer<OrderUpdateEvent> {
  @override
  final Iterable<Type> types = const [OrderUpdateEvent, _$OrderUpdateEvent];

  @override
  final String wireName = r'OrderUpdateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderUpdateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'order';
    yield serializers.serialize(
      object.order,
      specifiedType: const FullType(Order),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(OrderUpdateEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderUpdateEvent object, {
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
    required OrderUpdateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Order),
          ) as Order;
          result.order.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderUpdateEventTypeEnum),
          ) as OrderUpdateEventTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderUpdateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderUpdateEventBuilder();
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

class OrderUpdateEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const OrderUpdateEventTypeEnum UPDATE =
      _$orderUpdateEventTypeEnum_UPDATE;

  static Serializer<OrderUpdateEventTypeEnum> get serializer =>
      _$orderUpdateEventTypeEnumSerializer;

  const OrderUpdateEventTypeEnum._(String name) : super(name);

  static BuiltSet<OrderUpdateEventTypeEnum> get values =>
      _$orderUpdateEventTypeEnumValues;
  static OrderUpdateEventTypeEnum valueOf(String name) =>
      _$orderUpdateEventTypeEnumValueOf(name);
}
