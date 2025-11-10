//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_deleted_item.g.dart';

/// NftDeletedItem
///
/// Properties:
/// * [id] - Item identifier, has format \"contract:tokenId\"
/// * [token]
/// * [tokenId]
@BuiltValue()
abstract class NftDeletedItem
    implements Built<NftDeletedItem, NftDeletedItemBuilder> {
  /// Item identifier, has format \"contract:tokenId\"
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  NftDeletedItem._();

  factory NftDeletedItem([void updates(NftDeletedItemBuilder b)]) =
      _$NftDeletedItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftDeletedItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftDeletedItem> get serializer =>
      _$NftDeletedItemSerializer();
}

class _$NftDeletedItemSerializer
    implements PrimitiveSerializer<NftDeletedItem> {
  @override
  final Iterable<Type> types = const [NftDeletedItem, _$NftDeletedItem];

  @override
  final String wireName = r'NftDeletedItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftDeletedItem object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    NftDeletedItem object, {
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
    required NftDeletedItemBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftDeletedItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftDeletedItemBuilder();
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
