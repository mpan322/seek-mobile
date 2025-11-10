//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_activity.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activities.g.dart';

/// OrderActivities
///
/// Properties:
/// * [items] - List of found activities
/// * [continuation] - Continuation token to paginate items search result
@BuiltValue()
abstract class OrderActivities
    implements Built<OrderActivities, OrderActivitiesBuilder> {
  /// List of found activities
  @BuiltValueField(wireName: r'items')
  BuiltList<OrderActivity> get items;

  /// Continuation token to paginate items search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  OrderActivities._();

  factory OrderActivities([void updates(OrderActivitiesBuilder b)]) =
      _$OrderActivities;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivitiesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivities> get serializer =>
      _$OrderActivitiesSerializer();
}

class _$OrderActivitiesSerializer
    implements PrimitiveSerializer<OrderActivities> {
  @override
  final Iterable<Type> types = const [OrderActivities, _$OrderActivities];

  @override
  final String wireName = r'OrderActivities';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivities object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(OrderActivity)]),
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
    OrderActivities object, {
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
    required OrderActivitiesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(OrderActivity)]),
          ) as BuiltList<OrderActivity>;
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
  OrderActivities deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivitiesBuilder();
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
