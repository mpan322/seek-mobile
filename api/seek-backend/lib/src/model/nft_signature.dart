//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_signature.g.dart';

/// NftSignature
///
/// Properties:
/// * [v]
/// * [r]
/// * [s]
@BuiltValue()
abstract class NftSignature
    implements Built<NftSignature, NftSignatureBuilder> {
  @BuiltValueField(wireName: r'v')
  String get v;

  @BuiltValueField(wireName: r'r')
  String get r;

  @BuiltValueField(wireName: r's')
  String get s;

  NftSignature._();

  factory NftSignature([void updates(NftSignatureBuilder b)]) = _$NftSignature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftSignatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftSignature> get serializer => _$NftSignatureSerializer();
}

class _$NftSignatureSerializer implements PrimitiveSerializer<NftSignature> {
  @override
  final Iterable<Type> types = const [NftSignature, _$NftSignature];

  @override
  final String wireName = r'NftSignature';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftSignature object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'v';
    yield serializers.serialize(
      object.v,
      specifiedType: const FullType(String),
    );
    yield r'r';
    yield serializers.serialize(
      object.r,
      specifiedType: const FullType(String),
    );
    yield r's';
    yield serializers.serialize(
      object.s,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftSignature object, {
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
    required NftSignatureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'v':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.v = valueDes;
          break;
        case r'r':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.r = valueDes;
          break;
        case r's':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.s = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftSignature deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftSignatureBuilder();
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
