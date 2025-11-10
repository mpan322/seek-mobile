//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_filter_by_owner.g.dart';

/// NftItemFilterByOwner
///
/// Properties:
/// * [atType]
/// * [owner]
@BuiltValue()
abstract class NftItemFilterByOwner
    implements Built<NftItemFilterByOwner, NftItemFilterByOwnerBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftItemFilterByOwnerAtTypeEnum get atType;
  // enum atTypeEnum {  by_owner,  };

  @BuiltValueField(wireName: r'owner')
  String get owner;

  NftItemFilterByOwner._();

  factory NftItemFilterByOwner([void updates(NftItemFilterByOwnerBuilder b)]) =
      _$NftItemFilterByOwner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemFilterByOwnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemFilterByOwner> get serializer =>
      _$NftItemFilterByOwnerSerializer();
}

class _$NftItemFilterByOwnerSerializer
    implements PrimitiveSerializer<NftItemFilterByOwner> {
  @override
  final Iterable<Type> types = const [
    NftItemFilterByOwner,
    _$NftItemFilterByOwner
  ];

  @override
  final String wireName = r'NftItemFilterByOwner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemFilterByOwner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftItemFilterByOwnerAtTypeEnum),
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
    NftItemFilterByOwner object, {
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
    required NftItemFilterByOwnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemFilterByOwnerAtTypeEnum),
          ) as NftItemFilterByOwnerAtTypeEnum;
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
  NftItemFilterByOwner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemFilterByOwnerBuilder();
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

class NftItemFilterByOwnerAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'by_owner')
  static const NftItemFilterByOwnerAtTypeEnum byOwner =
      _$nftItemFilterByOwnerAtTypeEnum_byOwner;

  static Serializer<NftItemFilterByOwnerAtTypeEnum> get serializer =>
      _$nftItemFilterByOwnerAtTypeEnumSerializer;

  const NftItemFilterByOwnerAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemFilterByOwnerAtTypeEnum> get values =>
      _$nftItemFilterByOwnerAtTypeEnumValues;
  static NftItemFilterByOwnerAtTypeEnum valueOf(String name) =>
      _$nftItemFilterByOwnerAtTypeEnumValueOf(name);
}
