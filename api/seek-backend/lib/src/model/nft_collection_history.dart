//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_create_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_collection_history.g.dart';

/// NftCollectionHistory
///
/// Properties:
/// * [id]
/// * [owner]
/// * [name]
/// * [symbol]
/// * [type]
@BuiltValue()
abstract class NftCollectionHistory
    implements Built<NftCollectionHistory, NftCollectionHistoryBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  /// One Of [NftCreateCollection]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'COLLECTION_CREATE': NftCreateCollection,
  };

  NftCollectionHistory._();

  factory NftCollectionHistory([void updates(NftCollectionHistoryBuilder b)]) =
      _$NftCollectionHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftCollectionHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftCollectionHistory> get serializer =>
      _$NftCollectionHistorySerializer();
}

extension NftCollectionHistoryDiscriminatorExt on NftCollectionHistory {
  String? get discriminatorValue {
    if (this is NftCreateCollection) {
      return r'COLLECTION_CREATE';
    }
    return null;
  }
}

extension NftCollectionHistoryBuilderDiscriminatorExt
    on NftCollectionHistoryBuilder {
  String? get discriminatorValue {
    if (this is NftCreateCollectionBuilder) {
      return r'COLLECTION_CREATE';
    }
    return null;
  }
}

class _$NftCollectionHistorySerializer
    implements PrimitiveSerializer<NftCollectionHistory> {
  @override
  final Iterable<Type> types = const [
    NftCollectionHistory,
    _$NftCollectionHistory
  ];

  @override
  final String wireName = r'NftCollectionHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftCollectionHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftCollectionHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
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
    required NftCollectionHistoryBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftCollectionHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftCollectionHistoryBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(NftCollectionHistory.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      NftCreateCollection,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'COLLECTION_CREATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftCreateCollection),
        ) as NftCreateCollection;
        oneOfType = NftCreateCollection;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class NftCollectionHistoryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'COLLECTION_CREATE')
  static const NftCollectionHistoryTypeEnum COLLECTION_CREATE =
      _$nftCollectionHistoryTypeEnum_COLLECTION_CREATE;

  static Serializer<NftCollectionHistoryTypeEnum> get serializer =>
      _$nftCollectionHistoryTypeEnumSerializer;

  const NftCollectionHistoryTypeEnum._(String name) : super(name);

  static BuiltSet<NftCollectionHistoryTypeEnum> get values =>
      _$nftCollectionHistoryTypeEnumValues;
  static NftCollectionHistoryTypeEnum valueOf(String name) =>
      _$nftCollectionHistoryTypeEnumValueOf(name);
}
