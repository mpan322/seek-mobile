//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prepared_order_tx.g.dart';

/// PreparedOrderTx
///
/// Properties:
/// * [to]
/// * [data]
@BuiltValue()
abstract class PreparedOrderTx
    implements Built<PreparedOrderTx, PreparedOrderTxBuilder> {
  @BuiltValueField(wireName: r'to')
  String get to;

  @BuiltValueField(wireName: r'data')
  String get data;

  PreparedOrderTx._();

  factory PreparedOrderTx([void updates(PreparedOrderTxBuilder b)]) =
      _$PreparedOrderTx;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PreparedOrderTxBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PreparedOrderTx> get serializer =>
      _$PreparedOrderTxSerializer();
}

class _$PreparedOrderTxSerializer
    implements PrimitiveSerializer<PreparedOrderTx> {
  @override
  final Iterable<Type> types = const [PreparedOrderTx, _$PreparedOrderTx];

  @override
  final String wireName = r'PreparedOrderTx';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PreparedOrderTx object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'to';
    yield serializers.serialize(
      object.to,
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
    PreparedOrderTx object, {
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
    required PreparedOrderTxBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'to':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.to = valueDes;
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
  PreparedOrderTx deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PreparedOrderTxBuilder();
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
