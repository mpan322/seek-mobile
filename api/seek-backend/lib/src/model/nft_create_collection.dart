//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_create_collection.g.dart';

/// NftCreateCollection
///
/// Properties:
/// * [owner]
/// * [name]
/// * [symbol]
/// * [type]
@BuiltValue()
abstract class NftCreateCollection
    implements Built<NftCreateCollection, NftCreateCollectionBuilder> {
  @BuiltValueField(wireName: r'owner')
  String get owner;

  @BuiltValueField(wireName: r'name')
  String get name;

  @BuiltValueField(wireName: r'symbol')
  String get symbol;

  @BuiltValueField(wireName: r'type')
  NftCreateCollectionTypeEnum? get type;
  // enum typeEnum {  COLLECTION_CREATE,  };

  NftCreateCollection._();

  factory NftCreateCollection([void updates(NftCreateCollectionBuilder b)]) =
      _$NftCreateCollection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftCreateCollectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftCreateCollection> get serializer =>
      _$NftCreateCollectionSerializer();
}

class _$NftCreateCollectionSerializer
    implements PrimitiveSerializer<NftCreateCollection> {
  @override
  final Iterable<Type> types = const [
    NftCreateCollection,
    _$NftCreateCollection
  ];

  @override
  final String wireName = r'NftCreateCollection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftCreateCollection object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'owner';
    yield serializers.serialize(
      object.owner,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'symbol';
    yield serializers.serialize(
      object.symbol,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftCreateCollectionTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftCreateCollection object, {
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
    required NftCreateCollectionBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'symbol':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.symbol = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftCreateCollectionTypeEnum),
          ) as NftCreateCollectionTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftCreateCollection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftCreateCollectionBuilder();
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

class NftCreateCollectionTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'COLLECTION_CREATE')
  static const NftCreateCollectionTypeEnum COLLECTION_CREATE =
      _$nftCreateCollectionTypeEnum_COLLECTION_CREATE;

  static Serializer<NftCreateCollectionTypeEnum> get serializer =>
      _$nftCreateCollectionTypeEnumSerializer;

  const NftCreateCollectionTypeEnum._(String name) : super(name);

  static BuiltSet<NftCreateCollectionTypeEnum> get values =>
      _$nftCreateCollectionTypeEnumValues;
  static NftCreateCollectionTypeEnum valueOf(String name) =>
      _$nftCreateCollectionTypeEnumValueOf(name);
}
