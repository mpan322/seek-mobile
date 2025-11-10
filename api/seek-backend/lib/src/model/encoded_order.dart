//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/sign_message.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'encoded_order.g.dart';

/// EncodedOrder
///
/// Properties:
/// * [signMessage]
/// * [transferProxyAddress]
@BuiltValue()
abstract class EncodedOrder
    implements Built<EncodedOrder, EncodedOrderBuilder> {
  @BuiltValueField(wireName: r'signMessage')
  SignMessage get signMessage;

  @BuiltValueField(wireName: r'transferProxyAddress')
  String? get transferProxyAddress;

  EncodedOrder._();

  factory EncodedOrder([void updates(EncodedOrderBuilder b)]) = _$EncodedOrder;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EncodedOrderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EncodedOrder> get serializer => _$EncodedOrderSerializer();
}

class _$EncodedOrderSerializer implements PrimitiveSerializer<EncodedOrder> {
  @override
  final Iterable<Type> types = const [EncodedOrder, _$EncodedOrder];

  @override
  final String wireName = r'EncodedOrder';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EncodedOrder object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'signMessage';
    yield serializers.serialize(
      object.signMessage,
      specifiedType: const FullType(SignMessage),
    );
    if (object.transferProxyAddress != null) {
      yield r'transferProxyAddress';
      yield serializers.serialize(
        object.transferProxyAddress,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EncodedOrder object, {
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
    required EncodedOrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signMessage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SignMessage),
          ) as SignMessage;
          result.signMessage.replace(valueDes);
          break;
        case r'transferProxyAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transferProxyAddress = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EncodedOrder deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EncodedOrderBuilder();
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
