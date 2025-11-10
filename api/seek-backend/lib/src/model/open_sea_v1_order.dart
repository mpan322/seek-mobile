//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'open_sea_v1_order.g.dart';

/// OpenSeaV1Order
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class OpenSeaV1Order
    implements Built<OpenSeaV1Order, OpenSeaV1OrderBuilder> {
  @BuiltValueField(wireName: r'type')
  OpenSeaV1OrderTypeEnum get type;
  // enum typeEnum {  OPEN_SEA_V1,  };

  @BuiltValueField(wireName: r'data')
  OrderOpenSeaV1DataV1 get data;

  OpenSeaV1Order._();

  factory OpenSeaV1Order([void updates(OpenSeaV1OrderBuilder b)]) =
      _$OpenSeaV1Order;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpenSeaV1OrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpenSeaV1Order> get serializer =>
      _$OpenSeaV1OrderSerializer();
}

class _$OpenSeaV1OrderSerializer
    implements PrimitiveSerializer<OpenSeaV1Order> {
  @override
  final Iterable<Type> types = const [OpenSeaV1Order, _$OpenSeaV1Order];

  @override
  final String wireName = r'OpenSeaV1Order';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpenSeaV1Order object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OpenSeaV1OrderTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderOpenSeaV1DataV1),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OpenSeaV1Order object, {
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
    required OpenSeaV1OrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OpenSeaV1OrderTypeEnum),
          ) as OpenSeaV1OrderTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderOpenSeaV1DataV1),
          ) as OrderOpenSeaV1DataV1;
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
  OpenSeaV1Order deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpenSeaV1OrderBuilder();
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

class OpenSeaV1OrderTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1')
  static const OpenSeaV1OrderTypeEnum oPENSEAV1 =
      _$openSeaV1OrderTypeEnum_oPENSEAV1;

  static Serializer<OpenSeaV1OrderTypeEnum> get serializer =>
      _$openSeaV1OrderTypeEnumSerializer;

  const OpenSeaV1OrderTypeEnum._(String name) : super(name);

  static BuiltSet<OpenSeaV1OrderTypeEnum> get values =>
      _$openSeaV1OrderTypeEnumValues;
  static OpenSeaV1OrderTypeEnum valueOf(String name) =>
      _$openSeaV1OrderTypeEnumValueOf(name);
}
