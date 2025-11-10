//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'orders_pagination.g.dart';

/// OrdersPagination
///
/// Properties:
/// * [orders]
/// * [continuation]
@BuiltValue()
abstract class OrdersPagination
    implements Built<OrdersPagination, OrdersPaginationBuilder> {
  @BuiltValueField(wireName: r'orders')
  BuiltList<Order> get orders;

  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  OrdersPagination._();

  factory OrdersPagination([void updates(OrdersPaginationBuilder b)]) =
      _$OrdersPagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrdersPaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrdersPagination> get serializer =>
      _$OrdersPaginationSerializer();
}

class _$OrdersPaginationSerializer
    implements PrimitiveSerializer<OrdersPagination> {
  @override
  final Iterable<Type> types = const [OrdersPagination, _$OrdersPagination];

  @override
  final String wireName = r'OrdersPagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrdersPagination object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'orders';
    yield serializers.serialize(
      object.orders,
      specifiedType: const FullType(BuiltList, [FullType(Order)]),
    );
    if (object.continuation != null) {
      yield r'continuation';
      yield serializers.serialize(
        object.continuation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrdersPagination object, {
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
    required OrdersPaginationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(Order)]),
          ) as BuiltList<Order>;
          result.orders.replace(valueDes);
          break;
        case r'continuation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.continuation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrdersPagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrdersPaginationBuilder();
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
