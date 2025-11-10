//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_filter_by_creator.g.dart';

/// NftItemFilterByCreator
///
/// Properties:
/// * [atType]
/// * [creator]
@BuiltValue()
abstract class NftItemFilterByCreator
    implements Built<NftItemFilterByCreator, NftItemFilterByCreatorBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftItemFilterByCreatorAtTypeEnum get atType;
  // enum atTypeEnum {  by_creator,  };

  @BuiltValueField(wireName: r'creator')
  String get creator;

  NftItemFilterByCreator._();

  factory NftItemFilterByCreator(
          [void updates(NftItemFilterByCreatorBuilder b)]) =
      _$NftItemFilterByCreator;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemFilterByCreatorBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemFilterByCreator> get serializer =>
      _$NftItemFilterByCreatorSerializer();
}

class _$NftItemFilterByCreatorSerializer
    implements PrimitiveSerializer<NftItemFilterByCreator> {
  @override
  final Iterable<Type> types = const [
    NftItemFilterByCreator,
    _$NftItemFilterByCreator
  ];

  @override
  final String wireName = r'NftItemFilterByCreator';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemFilterByCreator object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftItemFilterByCreatorAtTypeEnum),
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
    NftItemFilterByCreator object, {
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
    required NftItemFilterByCreatorBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemFilterByCreatorAtTypeEnum),
          ) as NftItemFilterByCreatorAtTypeEnum;
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
  NftItemFilterByCreator deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemFilterByCreatorBuilder();
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

class NftItemFilterByCreatorAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_creator')
  static const NftItemFilterByCreatorAtTypeEnum byCreator =
      _$nftItemFilterByCreatorAtTypeEnum_byCreator;

  static Serializer<NftItemFilterByCreatorAtTypeEnum> get serializer =>
      _$nftItemFilterByCreatorAtTypeEnumSerializer;

  const NftItemFilterByCreatorAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemFilterByCreatorAtTypeEnum> get values =>
      _$nftItemFilterByCreatorAtTypeEnumValues;
  static NftItemFilterByCreatorAtTypeEnum valueOf(String name) =>
      _$nftItemFilterByCreatorAtTypeEnumValueOf(name);
}
