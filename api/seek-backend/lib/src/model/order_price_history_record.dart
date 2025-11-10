//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_price_history_record.g.dart';

/// OrderPriceHistoryRecord
///
/// Properties:
/// * [date]
/// * [makeValue]
/// * [takeValue]
@BuiltValue()
abstract class OrderPriceHistoryRecord
    implements Built<OrderPriceHistoryRecord, OrderPriceHistoryRecordBuilder> {
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'makeValue')
  String get makeValue;

  @BuiltValueField(wireName: r'takeValue')
  String get takeValue;

  OrderPriceHistoryRecord._();

  factory OrderPriceHistoryRecord(
          [void updates(OrderPriceHistoryRecordBuilder b)]) =
      _$OrderPriceHistoryRecord;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderPriceHistoryRecordBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderPriceHistoryRecord> get serializer =>
      _$OrderPriceHistoryRecordSerializer();
}

class _$OrderPriceHistoryRecordSerializer
    implements PrimitiveSerializer<OrderPriceHistoryRecord> {
  @override
  final Iterable<Type> types = const [
    OrderPriceHistoryRecord,
    _$OrderPriceHistoryRecord
  ];

  @override
  final String wireName = r'OrderPriceHistoryRecord';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderPriceHistoryRecord object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'makeValue';
    yield serializers.serialize(
      object.makeValue,
      specifiedType: const FullType(String),
    );
    yield r'takeValue';
    yield serializers.serialize(
      object.takeValue,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderPriceHistoryRecord object, {
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
    required OrderPriceHistoryRecordBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'makeValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makeValue = valueDes;
          break;
        case r'takeValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.takeValue = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderPriceHistoryRecord deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderPriceHistoryRecordBuilder();
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
