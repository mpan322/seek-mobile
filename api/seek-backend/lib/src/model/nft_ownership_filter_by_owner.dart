//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_filter_by_owner.g.dart';

/// NftOwnershipFilterByOwner
///
/// Properties:
/// * [atType]
/// * [owner]
@BuiltValue()
abstract class NftOwnershipFilterByOwner
    implements
        Built<NftOwnershipFilterByOwner, NftOwnershipFilterByOwnerBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftOwnershipFilterByOwnerAtTypeEnum get atType;
  // enum atTypeEnum {  by_owner,  };

  @BuiltValueField(wireName: r'owner')
  String get owner;

  NftOwnershipFilterByOwner._();

  factory NftOwnershipFilterByOwner(
          [void updates(NftOwnershipFilterByOwnerBuilder b)]) =
      _$NftOwnershipFilterByOwner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipFilterByOwnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipFilterByOwner> get serializer =>
      _$NftOwnershipFilterByOwnerSerializer();
}

class _$NftOwnershipFilterByOwnerSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByOwner> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipFilterByOwner,
    _$NftOwnershipFilterByOwner
  ];

  @override
  final String wireName = r'NftOwnershipFilterByOwner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipFilterByOwner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftOwnershipFilterByOwnerAtTypeEnum),
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
    NftOwnershipFilterByOwner object, {
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
    required NftOwnershipFilterByOwnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnershipFilterByOwnerAtTypeEnum),
          ) as NftOwnershipFilterByOwnerAtTypeEnum;
          result.atType = valueDes;
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
  NftOwnershipFilterByOwner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipFilterByOwnerBuilder();
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

class NftOwnershipFilterByOwnerAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_owner')
  static const NftOwnershipFilterByOwnerAtTypeEnum byOwner =
      _$nftOwnershipFilterByOwnerAtTypeEnum_byOwner;

  static Serializer<NftOwnershipFilterByOwnerAtTypeEnum> get serializer =>
      _$nftOwnershipFilterByOwnerAtTypeEnumSerializer;

  const NftOwnershipFilterByOwnerAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterByOwnerAtTypeEnum> get values =>
      _$nftOwnershipFilterByOwnerAtTypeEnumValues;
  static NftOwnershipFilterByOwnerAtTypeEnum valueOf(String name) =>
      _$nftOwnershipFilterByOwnerAtTypeEnumValueOf(name);
}
