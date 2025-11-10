//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'encoded_order_data.g.dart';

/// EncodedOrderData
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class EncodedOrderData
    implements Built<EncodedOrderData, EncodedOrderDataBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  @BuiltValueField(wireName: r'data')
  String get data;

  EncodedOrderData._();

  factory EncodedOrderData([void updates(EncodedOrderDataBuilder b)]) =
      _$EncodedOrderData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EncodedOrderDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EncodedOrderData> get serializer =>
      _$EncodedOrderDataSerializer();
}

class _$EncodedOrderDataSerializer
    implements PrimitiveSerializer<EncodedOrderData> {
  @override
  final Iterable<Type> types = const [EncodedOrderData, _$EncodedOrderData];

  @override
  final String wireName = r'EncodedOrderData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EncodedOrderData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    EncodedOrderData object, {
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
    required EncodedOrderDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.data = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EncodedOrderData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EncodedOrderDataBuilder();
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
