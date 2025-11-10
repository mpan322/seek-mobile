//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_ownership.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownerships.g.dart';

/// NftOwnerships
///
/// Properties:
/// * [total] - Number of ownerships were found by request
/// * [ownerships] - List of found ownerships
/// * [continuation] - Continuation token to paginate Ownerships search result
@BuiltValue()
abstract class NftOwnerships
    implements Built<NftOwnerships, NftOwnershipsBuilder> {
  /// Number of ownerships were found by request
  @BuiltValueField(wireName: r'total')
  int get total;

  /// List of found ownerships
  @BuiltValueField(wireName: r'ownerships')
  BuiltList<NftOwnership> get ownerships;

  /// Continuation token to paginate Ownerships search result
  @BuiltValueField(wireName: r'continuation')
  String? get continuation;

  NftOwnerships._();

  factory NftOwnerships([void updates(NftOwnershipsBuilder b)]) =
      _$NftOwnerships;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnerships> get serializer =>
      _$NftOwnershipsSerializer();
}

class _$NftOwnershipsSerializer implements PrimitiveSerializer<NftOwnerships> {
  @override
  final Iterable<Type> types = const [NftOwnerships, _$NftOwnerships];

  @override
  final String wireName = r'NftOwnerships';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnerships object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'total';
    yield serializers.serialize(
      object.total,
      specifiedType: const FullType(int),
    );
    yield r'ownerships';
    yield serializers.serialize(
      object.ownerships,
      specifiedType: const FullType(BuiltList, [FullType(NftOwnership)]),
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
    NftOwnerships object, {
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
    required NftOwnershipsBuilder result,
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
        case r'ownerships':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(NftOwnership)]),
          ) as BuiltList<NftOwnership>;
          result.ownerships.replace(valueDes);
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
  NftOwnerships deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipsBuilder();
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
