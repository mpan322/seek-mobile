//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'model_part.g.dart';

/// ModelPart
///
/// Properties:
/// * [account]
/// * [value]
@BuiltValue()
abstract class ModelPart implements Built<ModelPart, ModelPartBuilder> {
  @BuiltValueField(wireName: r'account')
  String get account;

  @BuiltValueField(wireName: r'value')
  int get value;

  ModelPart._();

  factory ModelPart([void updates(ModelPartBuilder b)]) = _$ModelPart;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ModelPartBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ModelPart> get serializer => _$ModelPartSerializer();
}

class _$ModelPartSerializer implements PrimitiveSerializer<ModelPart> {
  @override
  final Iterable<Type> types = const [ModelPart, _$ModelPart];

  @override
  final String wireName = r'ModelPart';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ModelPart object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'account';
    yield serializers.serialize(
      object.account,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ModelPart object, {
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
    required ModelPartBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.account = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ModelPart deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModelPartBuilder();
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
