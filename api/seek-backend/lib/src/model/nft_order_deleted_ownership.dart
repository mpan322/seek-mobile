//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_deleted_ownership.g.dart';

/// NftOrderDeletedOwnership
///
/// Properties:
/// * [id]
/// * [token]
/// * [tokenId]
/// * [owner]
@BuiltValue()
abstract class NftOrderDeletedOwnership
    implements
        Built<NftOrderDeletedOwnership, NftOrderDeletedOwnershipBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'owner')
  String get owner;

  NftOrderDeletedOwnership._();

  factory NftOrderDeletedOwnership(
          [void updates(NftOrderDeletedOwnershipBuilder b)]) =
      _$NftOrderDeletedOwnership;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderDeletedOwnershipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderDeletedOwnership> get serializer =>
      _$NftOrderDeletedOwnershipSerializer();
}

class _$NftOrderDeletedOwnershipSerializer
    implements PrimitiveSerializer<NftOrderDeletedOwnership> {
  @override
  final Iterable<Type> types = const [
    NftOrderDeletedOwnership,
    _$NftOrderDeletedOwnership
  ];

  @override
  final String wireName = r'NftOrderDeletedOwnership';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderDeletedOwnership object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
    yield r'tokenId';
    yield serializers.serialize(
      object.tokenId,
      specifiedType: const FullType(String),
    );
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderDeletedOwnership object, {
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
    required NftOrderDeletedOwnershipBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        case r'tokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.owner = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOrderDeletedOwnership deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderDeletedOwnershipBuilder();
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
