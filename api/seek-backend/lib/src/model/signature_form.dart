//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'signature_form.g.dart';

/// SignatureForm
///
/// Properties:
/// * [signature]
@BuiltValue()
abstract class SignatureForm
    implements Built<SignatureForm, SignatureFormBuilder> {
  @BuiltValueField(wireName: r'signature')
  String? get signature;

  SignatureForm._();

  factory SignatureForm([void updates(SignatureFormBuilder b)]) =
      _$SignatureForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SignatureFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SignatureForm> get serializer =>
      _$SignatureFormSerializer();
}

class _$SignatureFormSerializer implements PrimitiveSerializer<SignatureForm> {
  @override
  final Iterable<Type> types = const [SignatureForm, _$SignatureForm];

  @override
  final String wireName = r'SignatureForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SignatureForm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SignatureForm object, {
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
    required SignatureFormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signature = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SignatureForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SignatureFormBuilder();
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
