//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_item_filter_all.g.dart';

/// NftItemFilterAll
///
/// Properties:
/// * [atType]
/// * [showDeleted]
/// * [lastUpdatedFrom]
@BuiltValue()
abstract class NftItemFilterAll
    implements Built<NftItemFilterAll, NftItemFilterAllBuilder> {
  @BuiltValueField(wireName: r'@type')
  NftItemFilterAllAtTypeEnum get atType;
  // enum atTypeEnum {  all,  };

  @BuiltValueField(wireName: r'showDeleted')
  bool get showDeleted;

  @BuiltValueField(wireName: r'lastUpdatedFrom')
  DateTime? get lastUpdatedFrom;

  NftItemFilterAll._();

  factory NftItemFilterAll([void updates(NftItemFilterAllBuilder b)]) =
      _$NftItemFilterAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemFilterAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemFilterAll> get serializer =>
      _$NftItemFilterAllSerializer();
}

class _$NftItemFilterAllSerializer
    implements PrimitiveSerializer<NftItemFilterAll> {
  @override
  final Iterable<Type> types = const [NftItemFilterAll, _$NftItemFilterAll];

  @override
  final String wireName = r'NftItemFilterAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(NftItemFilterAllAtTypeEnum),
    );
    yield r'showDeleted';
    yield serializers.serialize(
      object.showDeleted,
      specifiedType: const FullType(bool),
    );
    if (object.lastUpdatedFrom != null) {
      yield r'lastUpdatedFrom';
      yield serializers.serialize(
        object.lastUpdatedFrom,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftItemFilterAll object, {
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
    required NftItemFilterAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftItemFilterAllAtTypeEnum),
          ) as NftItemFilterAllAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'showDeleted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.showDeleted = valueDes;
          break;
        case r'lastUpdatedFrom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdatedFrom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftItemFilterAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemFilterAllBuilder();
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

class NftItemFilterAllAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const NftItemFilterAllAtTypeEnum all =
      _$nftItemFilterAllAtTypeEnum_all;

  static Serializer<NftItemFilterAllAtTypeEnum> get serializer =>
      _$nftItemFilterAllAtTypeEnumSerializer;

  const NftItemFilterAllAtTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemFilterAllAtTypeEnum> get values =>
      _$nftItemFilterAllAtTypeEnumValues;
  static NftItemFilterAllAtTypeEnum valueOf(String name) =>
      _$nftItemFilterAllAtTypeEnumValueOf(name);
}
