//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_filter_by_creator.g.dart';

/// NftOwnershipFilterByCreator
///
/// Properties:
/// * [atType]
/// * [creator]
@BuiltValue()
abstract class NftOwnershipFilterByCreator
    implements
        Built<NftOwnershipFilterByCreator, NftOwnershipFilterByCreatorBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftOwnershipFilterByCreatorAtTypeEnum get atType;
  // enum atTypeEnum {  by_creator,  };

  @BuiltValueField(wireName: r'creator')
  String get creator;

  NftOwnershipFilterByCreator._();

  factory NftOwnershipFilterByCreator(
          [void updates(NftOwnershipFilterByCreatorBuilder b)]) =
      _$NftOwnershipFilterByCreator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipFilterByCreatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipFilterByCreator> get serializer =>
      _$NftOwnershipFilterByCreatorSerializer();
}

class _$NftOwnershipFilterByCreatorSerializer
    implements PrimitiveSerializer<NftOwnershipFilterByCreator> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipFilterByCreator,
    _$NftOwnershipFilterByCreator
  ];

  @override
  final String wireName = r'NftOwnershipFilterByCreator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipFilterByCreator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftOwnershipFilterByCreatorAtTypeEnum),
    );
    yield r'creator';
    yield serializers.serialize(
      object.creator,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnershipFilterByCreator object, {
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
    required NftOwnershipFilterByCreatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(NftOwnershipFilterByCreatorAtTypeEnum),
          ) as NftOwnershipFilterByCreatorAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'creator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.creator = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOwnershipFilterByCreator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipFilterByCreatorBuilder();
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

class NftOwnershipFilterByCreatorAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_creator')
  static const NftOwnershipFilterByCreatorAtTypeEnum byCreator =
      _$nftOwnershipFilterByCreatorAtTypeEnum_byCreator;

  static Serializer<NftOwnershipFilterByCreatorAtTypeEnum> get serializer =>
      _$nftOwnershipFilterByCreatorAtTypeEnumSerializer;

  const NftOwnershipFilterByCreatorAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterByCreatorAtTypeEnum> get values =>
      _$nftOwnershipFilterByCreatorAtTypeEnumValues;
  static NftOwnershipFilterByCreatorAtTypeEnum valueOf(String name) =>
      _$nftOwnershipFilterByCreatorAtTypeEnumValueOf(name);
}
