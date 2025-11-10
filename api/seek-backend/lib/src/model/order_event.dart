//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_update_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_event.g.dart';

/// OrderEvent
///
/// Properties:
/// * [eventId]
/// * [orderId]
/// * [order]
/// * [type]
@BuiltValue()
abstract class OrderEvent implements Built<OrderEvent, OrderEventBuilder> {
  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'orderId')
  String get orderId;

  /// One Of [OrderUpdateEvent]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'UPDATE': OrderUpdateEvent,
  };

  OrderEvent._();

  factory OrderEvent([void updates(OrderEventBuilder b)]) = _$OrderEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderEvent> get serializer => _$OrderEventSerializer();
}

extension OrderEventDiscriminatorExt on OrderEvent {
  String? get discriminatorValue {
    if (this is OrderUpdateEvent) {
      return r'UPDATE';
    }
    return null;
  }
}

extension OrderEventBuilderDiscriminatorExt on OrderEventBuilder {
  String? get discriminatorValue {
    if (this is OrderUpdateEventBuilder) {
      return r'UPDATE';
    }
    return null;
  }
}

class _$OrderEventSerializer implements PrimitiveSerializer<OrderEvent> {
  @override
  final Iterable<Type> types = const [OrderEvent, _$OrderEvent];

  @override
  final String wireName = r'OrderEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'orderId';
    yield serializers.serialize(
      object.orderId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderEvent object, {
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
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventId = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderEventBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(OrderEvent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      OrderUpdateEvent,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'UPDATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OrderUpdateEvent),
        ) as OrderUpdateEvent;
        oneOfType = OrderUpdateEvent;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class OrderEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const OrderEventTypeEnum UPDATE = _$orderEventTypeEnum_UPDATE;

  static Serializer<OrderEventTypeEnum> get serializer =>
      _$orderEventTypeEnumSerializer;

  const OrderEventTypeEnum._(String name) : super(name);

  static BuiltSet<OrderEventTypeEnum> get values => _$orderEventTypeEnumValues;
  static OrderEventTypeEnum valueOf(String name) =>
      _$orderEventTypeEnumValueOf(name);
}
