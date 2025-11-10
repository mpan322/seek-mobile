//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_sort.g.dart';

/// NftSort
///
/// Properties:
/// * [property]
/// * [direction]
@BuiltValue()
abstract class NftSort implements Built<NftSort, NftSortBuilder> {
  @BuiltValueField(wireName: r'property')
  String get property;

  @BuiltValueField(wireName: r'direction')
  NftSortDirectionEnum get direction;
  // enum directionEnum {  ASC,  DESC,  };

  NftSort._();

  factory NftSort([void updates(NftSortBuilder b)]) = _$NftSort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftSortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftSort> get serializer => _$NftSortSerializer();
}

class _$NftSortSerializer implements PrimitiveSerializer<NftSort> {
  @override
  final Iterable<Type> types = const [NftSort, _$NftSort];

  @override
  final String wireName = r'NftSort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftSort object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'property';
    yield serializers.serialize(
      object.property,
      specifiedType: const FullType(String),
    );
    yield r'direction';
    yield serializers.serialize(
      object.direction,
      specifiedType: const FullType(NftSortDirectionEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftSort object, {
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
    required NftSortBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'property':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.property = valueDes;
          break;
        case r'direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftSortDirectionEnum),
          ) as NftSortDirectionEnum;
          result.direction = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftSort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftSortBuilder();
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

class NftSortDirectionEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ASC')
  static const NftSortDirectionEnum ASC = _$nftSortDirectionEnum_ASC;
  @BuiltValueEnumConst(wireName: r'DESC')
  static const NftSortDirectionEnum DESC = _$nftSortDirectionEnum_DESC;

  static Serializer<NftSortDirectionEnum> get serializer =>
      _$nftSortDirectionEnumSerializer;

  const NftSortDirectionEnum._(String name) : super(name);

  static BuiltSet<NftSortDirectionEnum> get values =>
      _$nftSortDirectionEnumValues;
  static NftSortDirectionEnum valueOf(String name) =>
      _$nftSortDirectionEnumValueOf(name);
}
