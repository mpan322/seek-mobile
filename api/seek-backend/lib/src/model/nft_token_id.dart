//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_signature.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_token_id.g.dart';

/// NftTokenId
///
/// Properties:
/// * [tokenId]
/// * [signature]
@BuiltValue()
abstract class NftTokenId implements Built<NftTokenId, NftTokenIdBuilder> {
  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'signature')
  NftSignature get signature;

  NftTokenId._();

  factory NftTokenId([void updates(NftTokenIdBuilder b)]) = _$NftTokenId;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftTokenIdBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftTokenId> get serializer => _$NftTokenIdSerializer();
}

class _$NftTokenIdSerializer implements PrimitiveSerializer<NftTokenId> {
  @override
  final Iterable<Type> types = const [NftTokenId, _$NftTokenId];

  @override
  final String wireName = r'NftTokenId';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftTokenId object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'tokenId';
    yield serializers.serialize(
      object.tokenId,
      specifiedType: const FullType(String),
    );
    yield r'signature';
    yield serializers.serialize(
      object.signature,
      specifiedType: const FullType(NftSignature),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftTokenId object, {
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
    required NftTokenIdBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'tokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftSignature),
          ) as NftSignature;
          result.signature.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftTokenId deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftTokenIdBuilder();
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
