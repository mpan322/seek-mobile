//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'invert_order_form.g.dart';

/// InvertOrderForm
///
/// Properties:
/// * [maker]
/// * [amount]
/// * [salt]
/// * [originFees]
@BuiltValue()
abstract class InvertOrderForm
    implements Built<InvertOrderForm, InvertOrderFormBuilder> {
  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'amount')
  String get amount;

  @BuiltValueField(wireName: r'salt')
  String get salt;

  @BuiltValueField(wireName: r'originFees')
  BuiltList<ModelPart> get originFees;

  InvertOrderForm._();

  factory InvertOrderForm([void updates(InvertOrderFormBuilder b)]) =
      _$InvertOrderForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(InvertOrderFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<InvertOrderForm> get serializer =>
      _$InvertOrderFormSerializer();
}

class _$InvertOrderFormSerializer
    implements PrimitiveSerializer<InvertOrderForm> {
  @override
  final Iterable<Type> types = const [InvertOrderForm, _$InvertOrderForm];

  @override
  final String wireName = r'InvertOrderForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    InvertOrderForm object, {
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
    yield r'salt';
    yield serializers.serialize(
      object.salt,
      specifiedType: const FullType(String),
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
    InvertOrderForm object, {
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
    required InvertOrderFormBuilder result,
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
        case r'salt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.salt = valueDes;
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
  InvertOrderForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = InvertOrderFormBuilder();
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
