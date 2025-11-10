//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_data_legacy.g.dart';

/// OrderDataLegacy
///
/// Properties:
/// * [dataType]
/// * [fee]
@BuiltValue()
abstract class OrderDataLegacy
    implements Built<OrderDataLegacy, OrderDataLegacyBuilder> {
  @BuiltValueField(wireName: r'dataType')
  OrderDataLegacyDataTypeEnum get dataType;
  // enum dataTypeEnum {  LEGACY,  };

  @BuiltValueField(wireName: r'fee')
  int get fee;

  OrderDataLegacy._();

  factory OrderDataLegacy([void updates(OrderDataLegacyBuilder b)]) =
      _$OrderDataLegacy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderDataLegacyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderDataLegacy> get serializer =>
      _$OrderDataLegacySerializer();
}

class _$OrderDataLegacySerializer
    implements PrimitiveSerializer<OrderDataLegacy> {
  @override
  final Iterable<Type> types = const [OrderDataLegacy, _$OrderDataLegacy];

  @override
  final String wireName = r'OrderDataLegacy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderDataLegacy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dataType';
    yield serializers.serialize(
      object.dataType,
      specifiedType: const FullType(OrderDataLegacyDataTypeEnum),
    );
    yield r'fee';
    yield serializers.serialize(
      object.fee,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderDataLegacy object, {
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
    required OrderDataLegacyBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dataType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDataLegacyDataTypeEnum),
          ) as OrderDataLegacyDataTypeEnum;
          result.dataType = valueDes;
          break;
        case r'fee':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.fee = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderDataLegacy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderDataLegacyBuilder();
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

class OrderDataLegacyDataTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'LEGACY')
  static const OrderDataLegacyDataTypeEnum LEGACY =
      _$orderDataLegacyDataTypeEnum_LEGACY;

  static Serializer<OrderDataLegacyDataTypeEnum> get serializer =>
      _$orderDataLegacyDataTypeEnumSerializer;

  const OrderDataLegacyDataTypeEnum._(String name) : super(name);

  static BuiltSet<OrderDataLegacyDataTypeEnum> get values =>
      _$orderDataLegacyDataTypeEnumValues;
  static OrderDataLegacyDataTypeEnum valueOf(String name) =>
      _$orderDataLegacyDataTypeEnumValueOf(name);
}
