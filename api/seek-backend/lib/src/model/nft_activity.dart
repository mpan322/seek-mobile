//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/mint.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/burn.dart';
import 'package:seek_backend/src/model/transfer.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_activity.g.dart';

/// NftActivity
///
/// Properties:
/// * [owner]
/// * [contract]
/// * [tokenId]
/// * [value]
/// * [transactionHash]
/// * [blockHash]
/// * [blockNumber]
/// * [logIndex]
/// * [atType]
/// * [from]
@BuiltValue()
abstract class NftActivity implements Built<NftActivity, NftActivityBuilder> {
  @BuiltValueField(wireName: r'owner')
  String get owner;

  @BuiltValueField(wireName: r'blockHash')
  String get blockHash;

  @BuiltValueField(wireName: r'logIndex')
  int get logIndex;

  @BuiltValueField(wireName: r'tokenId')
  String get tokenId;

  @BuiltValueField(wireName: r'contract')
  String get contract;

  @BuiltValueField(wireName: r'blockNumber')
  int get blockNumber;

  @BuiltValueField(wireName: r'value')
  String get value;

  @BuiltValueField(wireName: r'transactionHash')
  String get transactionHash;

  /// One Of [Burn], [Mint], [Transfer]
  OneOf get oneOf;

  NftActivity._();

  factory NftActivity([void updates(NftActivityBuilder b)]) = _$NftActivity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivity> get serializer => _$NftActivitySerializer();
}

class _$NftActivitySerializer implements PrimitiveSerializer<NftActivity> {
  @override
  final Iterable<Type> types = const [NftActivity, _$NftActivity];

  @override
  final String wireName = r'NftActivity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(String),
    );
    yield r'blockHash';
    yield serializers.serialize(
      object.blockHash,
      specifiedType: const FullType(String),
    );
    yield r'logIndex';
    yield serializers.serialize(
      object.logIndex,
      specifiedType: const FullType(int),
    );
    yield r'tokenId';
    yield serializers.serialize(
      object.tokenId,
      specifiedType: const FullType(String),
    );
    yield r'contract';
    yield serializers.serialize(
      object.contract,
      specifiedType: const FullType(String),
    );
    yield r'blockNumber';
    yield serializers.serialize(
      object.blockNumber,
      specifiedType: const FullType(int),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
    yield r'transactionHash';
    yield serializers.serialize(
      object.transactionHash,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftActivity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NftActivityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.owner = valueDes;
          break;
        case r'blockHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.blockHash = valueDes;
          break;
        case r'logIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logIndex = valueDes;
          break;
        case r'tokenId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tokenId = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.contract = valueDes;
          break;
        case r'blockNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blockNumber = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        case r'transactionHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionHash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftActivity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivityBuilder();
    Object? oneOfDataSrc;
    final targetType = const FullType(OneOf, [
      FullType(Mint),
      FullType(Burn),
      FullType(Transfer),
    ]);
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
    oneOfDataSrc = unhandled;
    result.oneOf = serializers.deserialize(oneOfDataSrc,
        specifiedType: targetType) as OneOf;
    return result.build();
  }
}

class NftActivityAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'transfer')
  static const NftActivityAtTypeEnum transfer =
      _$nftActivityAtTypeEnum_transfer;

  static Serializer<NftActivityAtTypeEnum> get serializer =>
      _$nftActivityAtTypeEnumSerializer;

  const NftActivityAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftActivityAtTypeEnum> get values =>
      _$nftActivityAtTypeEnumValues;
  static NftActivityAtTypeEnum valueOf(String name) =>
      _$nftActivityAtTypeEnumValueOf(name);
}
