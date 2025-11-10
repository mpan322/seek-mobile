//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_data_legacy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legacy_order.g.dart';

/// LegacyOrder
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class LegacyOrder implements Built<LegacyOrder, LegacyOrderBuilder> {
  @BuiltValueField(wireName: r'type')
  LegacyOrderTypeEnum get type;
  // enum typeEnum {  RARIBLE_V1,  };

  @BuiltValueField(wireName: r'data')
  OrderDataLegacy get data;

  LegacyOrder._();

  factory LegacyOrder([void updates(LegacyOrderBuilder b)]) = _$LegacyOrder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegacyOrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegacyOrder> get serializer => _$LegacyOrderSerializer();
}

class _$LegacyOrderSerializer implements PrimitiveSerializer<LegacyOrder> {
  @override
  final Iterable<Type> types = const [LegacyOrder, _$LegacyOrder];

  @override
  final String wireName = r'LegacyOrder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegacyOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(LegacyOrderTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderDataLegacy),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LegacyOrder object, {
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
    required LegacyOrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LegacyOrderTypeEnum),
          ) as LegacyOrderTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDataLegacy),
          ) as OrderDataLegacy;
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
  LegacyOrder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegacyOrderBuilder();
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

class LegacyOrderTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V1')
  static const LegacyOrderTypeEnum rARIBLEV1 = _$legacyOrderTypeEnum_rARIBLEV1;

  static Serializer<LegacyOrderTypeEnum> get serializer =>
      _$legacyOrderTypeEnumSerializer;

  const LegacyOrderTypeEnum._(String name) : super(name);

  static BuiltSet<LegacyOrderTypeEnum> get values =>
      _$legacyOrderTypeEnumValues;
  static LegacyOrderTypeEnum valueOf(String name) =>
      _$legacyOrderTypeEnumValueOf(name);
}
