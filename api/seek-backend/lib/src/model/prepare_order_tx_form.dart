//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'prepare_order_tx_form.g.dart';

/// PrepareOrderTxForm
///
/// Properties:
/// * [maker]
/// * [amount]
/// * [payouts]
/// * [originFees]
@BuiltValue()
abstract class PrepareOrderTxForm
    implements Built<PrepareOrderTxForm, PrepareOrderTxFormBuilder> {
  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'amount')
  String get amount;

  @BuiltValueField(wireName: r'payouts')
  BuiltList<ModelPart> get payouts;

  @BuiltValueField(wireName: r'originFees')
  BuiltList<ModelPart> get originFees;

  PrepareOrderTxForm._();

  factory PrepareOrderTxForm([void updates(PrepareOrderTxFormBuilder b)]) =
      _$PrepareOrderTxForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PrepareOrderTxFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PrepareOrderTxForm> get serializer =>
      _$PrepareOrderTxFormSerializer();
}

class _$PrepareOrderTxFormSerializer
    implements PrimitiveSerializer<PrepareOrderTxForm> {
  @override
  final Iterable<Type> types = const [PrepareOrderTxForm, _$PrepareOrderTxForm];

  @override
  final String wireName = r'PrepareOrderTxForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PrepareOrderTxForm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'maker';
    yield serializers.serialize(
      object.maker,
      specifiedType: const FullType(String),
    );
    yield r'amount';
    yield serializers.serialize(
      object.amount,
      specifiedType: const FullType(String),
    );
    yield r'payouts';
    yield serializers.serialize(
      object.payouts,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
    yield r'originFees';
    yield serializers.serialize(
      object.originFees,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PrepareOrderTxForm object, {
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
    required PrepareOrderTxFormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.amount = valueDes;
          break;
        case r'payouts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.payouts.replace(valueDes);
          break;
        case r'originFees':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.originFees.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PrepareOrderTxForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PrepareOrderTxFormBuilder();
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
