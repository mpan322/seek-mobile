//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_collections.g.dart';

/// NftCollections
///
/// Properties:
/// * [total] - Number of collections were found by request
/// * [collections] - List of found collections
/// * [continuation] - Continuation token to paginate items search result
@BuiltValue()
abstract class NftCollections
    implements Built<NftCollections, NftCollectionsBuilder> {
  /// Number of collections were found by request
  @BuiltValueField(wireName: r'total')
  int get total;

  /// List of found collections
  @BuiltValueField(wireName: r'collections')
  BuiltList<NftCollection> get collections;

  /// Continuation token to paginate items search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  NftCollections._();

  factory NftCollections([void updates(NftCollectionsBuilder b)]) =
      _$NftCollections;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftCollectionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftCollections> get serializer =>
      _$NftCollectionsSerializer();
}

class _$NftCollectionsSerializer
    implements PrimitiveSerializer<NftCollections> {
  @override
  final Iterable<Type> types = const [NftCollections, _$NftCollections];

  @override
  final String wireName = r'NftCollections';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftCollections object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'collections';
    yield serializers.serialize(
      object.collections,
      specifiedType: const FullType(BuiltList, [FullType(NftCollection)]),
    );
    if (object.continuation != null) {
      yield r'continuation';
      yield serializers.serialize(
        object.continuation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftCollections object, {
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
    required NftCollectionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'collections':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NftCollection)]),
          ) as BuiltList<NftCollection>;
          result.collections.replace(valueDes);
          break;
        case r'continuation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.continuation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftCollections deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftCollectionsBuilder();
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
