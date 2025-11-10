//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_rarible_v2_data_v1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'rarible_v2_order.g.dart';

/// RaribleV2Order
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class RaribleV2Order
    implements Built<RaribleV2Order, RaribleV2OrderBuilder> {
  @BuiltValueField(wireName: r'type')
  RaribleV2OrderTypeEnum get type;
  // enum typeEnum {  RARIBLE_V2,  };

  @BuiltValueField(wireName: r'data')
  OrderRaribleV2DataV1 get data;

  RaribleV2Order._();

  factory RaribleV2Order([void updates(RaribleV2OrderBuilder b)]) =
      _$RaribleV2Order;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RaribleV2OrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RaribleV2Order> get serializer =>
      _$RaribleV2OrderSerializer();
}

class _$RaribleV2OrderSerializer
    implements PrimitiveSerializer<RaribleV2Order> {
  @override
  final Iterable<Type> types = const [RaribleV2Order, _$RaribleV2Order];

  @override
  final String wireName = r'RaribleV2Order';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RaribleV2Order object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(RaribleV2OrderTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderRaribleV2DataV1),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    RaribleV2Order object, {
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
    required RaribleV2OrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RaribleV2OrderTypeEnum),
          ) as RaribleV2OrderTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderRaribleV2DataV1),
          ) as OrderRaribleV2DataV1;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RaribleV2Order deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RaribleV2OrderBuilder();
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

class RaribleV2OrderTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V2')
  static const RaribleV2OrderTypeEnum rARIBLEV2 =
      _$raribleV2OrderTypeEnum_rARIBLEV2;

  static Serializer<RaribleV2OrderTypeEnum> get serializer =>
      _$raribleV2OrderTypeEnumSerializer;

  const RaribleV2OrderTypeEnum._(String name) : super(name);

  static BuiltSet<RaribleV2OrderTypeEnum> get values =>
      _$raribleV2OrderTypeEnumValues;
  static RaribleV2OrderTypeEnum valueOf(String name) =>
      _$raribleV2OrderTypeEnumValueOf(name);
}
