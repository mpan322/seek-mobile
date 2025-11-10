//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lazy_erc721.g.dart';

/// LazyErc721
///
/// Properties:
/// * [atType]
@BuiltValue()
abstract class LazyErc721 implements Built<LazyErc721, LazyErc721Builder> {
  @BuiltValueField(wireName: r'@type')
  LazyErc721AtTypeEnum get atType;
  // enum atTypeEnum {  ERC721,  };

  LazyErc721._();

  factory LazyErc721([void updates(LazyErc721Builder b)]) = _$LazyErc721;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LazyErc721Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LazyErc721> get serializer => _$LazyErc721Serializer();
}

class _$LazyErc721Serializer implements PrimitiveSerializer<LazyErc721> {
  @override
  final Iterable<Type> types = const [LazyErc721, _$LazyErc721];

  @override
  final String wireName = r'LazyErc721';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LazyErc721 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(LazyErc721AtTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LazyErc721 object, {
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
    required LazyErc721Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LazyErc721AtTypeEnum),
          ) as LazyErc721AtTypeEnum;
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
  LazyErc721 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LazyErc721Builder();
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

class LazyErc721AtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ERC721')
  static const LazyErc721AtTypeEnum eRC721 = _$lazyErc721AtTypeEnum_eRC721;

  static Serializer<LazyErc721AtTypeEnum> get serializer =>
      _$lazyErc721AtTypeEnumSerializer;

  const LazyErc721AtTypeEnum._(String name) : super(name);

  static BuiltSet<LazyErc721AtTypeEnum> get values =>
      _$lazyErc721AtTypeEnumValues;
  static LazyErc721AtTypeEnum valueOf(String name) =>
      _$lazyErc721AtTypeEnumValueOf(name);
}
