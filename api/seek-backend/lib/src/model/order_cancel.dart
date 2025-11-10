//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_cancel.g.dart';

/// OrderCancel
///
/// Properties:
/// * [type]
/// * [owner]
@BuiltValue()
abstract class OrderCancel implements Built<OrderCancel, OrderCancelBuilder> {
  @BuiltValueField(wireName: r'type')
  OrderCancelTypeEnum get type;
  // enum typeEnum {  CANCEL,  };

  @BuiltValueField(wireName: r'owner')
  String? get owner;

  OrderCancel._();

  factory OrderCancel([void updates(OrderCancelBuilder b)]) = _$OrderCancel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderCancelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderCancel> get serializer => _$OrderCancelSerializer();
}

class _$OrderCancelSerializer implements PrimitiveSerializer<OrderCancel> {
  @override
  final Iterable<Type> types = const [OrderCancel, _$OrderCancel];

  @override
  final String wireName = r'OrderCancel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderCancel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OrderCancelTypeEnum),
    );
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderCancel object, {
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
    required OrderCancelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderCancelTypeEnum),
          ) as OrderCancelTypeEnum;
          result.type = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.owner = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderCancel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderCancelBuilder();
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

class OrderCancelTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CANCEL')
  static const OrderCancelTypeEnum CANCEL = _$orderCancelTypeEnum_CANCEL;

  static Serializer<OrderCancelTypeEnum> get serializer =>
      _$orderCancelTypeEnumSerializer;

  const OrderCancelTypeEnum._(String name) : super(name);

  static BuiltSet<OrderCancelTypeEnum> get values =>
      _$orderCancelTypeEnumValues;
  static OrderCancelTypeEnum valueOf(String name) =>
      _$orderCancelTypeEnumValueOf(name);
}
