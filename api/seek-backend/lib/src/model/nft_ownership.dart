//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:seek_backend/src/model/item_history.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership.g.dart';

/// NftOwnership
///
/// Properties:
/// * [id] - Ownership identifier, has format \"token:tokenId:owner\"
/// * [contract]
/// * [tokenId]
/// * [owner]
/// * [creators] - Creators of the target item
/// * [value]
/// * [lazyValue]
/// * [date] - Start date of ownership
/// * [pending] - History of ownership
@BuiltValue()
abstract class NftOwnership
    implements Built<NftOwnership, NftOwnershipBuilder> {
  /// Ownership identifier, has format \"token:tokenId:owner\"
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'owner')
  String get owner;

  /// Creators of the target item
  @BuiltValueField(wireName: r'creators')
  BuiltList<ModelPart> get creators;

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'lazyValue')
  String get lazyValue;

  /// Start date of ownership
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  /// History of ownership
  @BuiltValueField(wireName: r'pending')
  BuiltList<ItemHistory> get pending;

  NftOwnership._();

  factory NftOwnership([void updates(NftOwnershipBuilder b)]) = _$NftOwnership;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnership> get serializer => _$NftOwnershipSerializer();
}

class _$NftOwnershipSerializer implements PrimitiveSerializer<NftOwnership> {
  @override
  final Iterable<Type> types = const [NftOwnership, _$NftOwnership];

  @override
  final String wireName = r'NftOwnership';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnership object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
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
    yield r'creators';
    yield serializers.serialize(
      object.creators,
      specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    yield r'lazyValue';
    yield serializers.serialize(
      object.lazyValue,
      specifiedType: const FullType(String),
    );
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    yield r'pending';
    yield serializers.serialize(
      object.pending,
      specifiedType: const FullType(BuiltList, [FullType(ItemHistory)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnership object, {
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
    required NftOwnershipBuilder result,
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
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
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
        case r'creators':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ModelPart)]),
          ) as BuiltList<ModelPart>;
          result.creators.replace(valueDes);
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'lazyValue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lazyValue = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ItemHistory)]),
          ) as BuiltList<ItemHistory>;
          result.pending.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOwnership deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipBuilder();
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
