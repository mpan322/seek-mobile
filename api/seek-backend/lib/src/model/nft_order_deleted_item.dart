//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_deleted_item.g.dart';

/// NftOrderDeletedItem
///
/// Properties:
/// * [id]
/// * [token]
/// * [tokenId]
@BuiltValue()
abstract class NftOrderDeletedItem
    implements Built<NftOrderDeletedItem, NftOrderDeletedItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'token')
  String get token;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  NftOrderDeletedItem._();

  factory NftOrderDeletedItem([void updates(NftOrderDeletedItemBuilder b)]) =
      _$NftOrderDeletedItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderDeletedItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderDeletedItem> get serializer =>
      _$NftOrderDeletedItemSerializer();
}

class _$NftOrderDeletedItemSerializer
    implements PrimitiveSerializer<NftOrderDeletedItem> {
  @override
  final Iterable<Type> types = const [
    NftOrderDeletedItem,
    _$NftOrderDeletedItem
  ];

  @override
  final String wireName = r'NftOrderDeletedItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderDeletedItem object, {
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
    NftOrderDeletedItem object, {
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
    required NftOrderDeletedItemBuilder result,
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
  NftOrderDeletedItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderDeletedItemBuilder();
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
