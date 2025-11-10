//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_bid.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_bids_pagination.g.dart';

/// OrderBidsPagination
///
/// Properties:
/// * [items]
/// * [continuation]
@BuiltValue()
abstract class OrderBidsPagination
    implements Built<OrderBidsPagination, OrderBidsPaginationBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<OrderBid> get items;

  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  OrderBidsPagination._();

  factory OrderBidsPagination([void updates(OrderBidsPaginationBuilder b)]) =
      _$OrderBidsPagination;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderBidsPaginationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderBidsPagination> get serializer =>
      _$OrderBidsPaginationSerializer();
}

class _$OrderBidsPaginationSerializer
    implements PrimitiveSerializer<OrderBidsPagination> {
  @override
  final Iterable<Type> types = const [
    OrderBidsPagination,
    _$OrderBidsPagination
  ];

  @override
  final String wireName = r'OrderBidsPagination';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderBidsPagination object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(OrderBid)]),
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
    OrderBidsPagination object, {
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
    required OrderBidsPaginationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderBid)]),
          ) as BuiltList<OrderBid>;
          result.items.replace(valueDes);
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
  OrderBidsPagination deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderBidsPaginationBuilder();
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
