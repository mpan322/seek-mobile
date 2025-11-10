//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_activity_filter_types.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_activity_filter_all.g.dart';

/// NftActivityFilterAll
///
/// Properties:
/// * [atType]
/// * [types]
@BuiltValue()
abstract class NftActivityFilterAll
    implements Built<NftActivityFilterAll, NftActivityFilterAllBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftActivityFilterAllAtTypeEnum get atType;
  // enum atTypeEnum {  all,  };

  @BuiltValueField(wireName: r'types')
  BuiltList<NftActivityFilterTypes> get types;

  NftActivityFilterAll._();

  factory NftActivityFilterAll([void updates(NftActivityFilterAllBuilder b)]) =
      _$NftActivityFilterAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftActivityFilterAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftActivityFilterAll> get serializer =>
      _$NftActivityFilterAllSerializer();
}

class _$NftActivityFilterAllSerializer
    implements PrimitiveSerializer<NftActivityFilterAll> {
  @override
  final Iterable<Type> types = const [
    NftActivityFilterAll,
    _$NftActivityFilterAll
  ];

  @override
  final String wireName = r'NftActivityFilterAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftActivityFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftActivityFilterAllAtTypeEnum),
    );
    yield r'types';
    yield serializers.serialize(
      object.types,
      specifiedType:
          const FullType(BuiltList, [FullType(NftActivityFilterTypes)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftActivityFilterAll object, {
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
    required NftActivityFilterAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftActivityFilterAllAtTypeEnum),
          ) as NftActivityFilterAllAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'types':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(NftActivityFilterTypes)]),
          ) as BuiltList<NftActivityFilterTypes>;
          result.types.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftActivityFilterAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftActivityFilterAllBuilder();
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

class NftActivityFilterAllAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const NftActivityFilterAllAtTypeEnum all =
      _$nftActivityFilterAllAtTypeEnum_all;

  static Serializer<NftActivityFilterAllAtTypeEnum> get serializer =>
      _$nftActivityFilterAllAtTypeEnumSerializer;

  const NftActivityFilterAllAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftActivityFilterAllAtTypeEnum> get values =>
      _$nftActivityFilterAllAtTypeEnumValues;
  static NftActivityFilterAllAtTypeEnum valueOf(String name) =>
      _$nftActivityFilterAllAtTypeEnumValueOf(name);
}
