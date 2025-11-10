//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_filter_all.g.dart';

/// NftOwnershipFilterAll
///
/// Properties:
/// * [atType]
@BuiltValue()
abstract class NftOwnershipFilterAll
    implements Built<NftOwnershipFilterAll, NftOwnershipFilterAllBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftOwnershipFilterAllAtTypeEnum get atType;
  // enum atTypeEnum {  all,  };

  NftOwnershipFilterAll._();

  factory NftOwnershipFilterAll(
      [void updates(NftOwnershipFilterAllBuilder b)]) = _$NftOwnershipFilterAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipFilterAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipFilterAll> get serializer =>
      _$NftOwnershipFilterAllSerializer();
}

class _$NftOwnershipFilterAllSerializer
    implements PrimitiveSerializer<NftOwnershipFilterAll> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipFilterAll,
    _$NftOwnershipFilterAll
  ];

  @override
  final String wireName = r'NftOwnershipFilterAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftOwnershipFilterAllAtTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnershipFilterAll object, {
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
    required NftOwnershipFilterAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnershipFilterAllAtTypeEnum),
          ) as NftOwnershipFilterAllAtTypeEnum;
          result.atType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOwnershipFilterAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipFilterAllBuilder();
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

class NftOwnershipFilterAllAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const NftOwnershipFilterAllAtTypeEnum all =
      _$nftOwnershipFilterAllAtTypeEnum_all;

  static Serializer<NftOwnershipFilterAllAtTypeEnum> get serializer =>
      _$nftOwnershipFilterAllAtTypeEnumSerializer;

  const NftOwnershipFilterAllAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipFilterAllAtTypeEnum> get values =>
      _$nftOwnershipFilterAllAtTypeEnumValues;
  static NftOwnershipFilterAllAtTypeEnum valueOf(String name) =>
      _$nftOwnershipFilterAllAtTypeEnumValueOf(name);
}
