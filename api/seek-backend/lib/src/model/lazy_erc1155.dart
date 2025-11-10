//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'lazy_erc1155.g.dart';

/// LazyErc1155
///
/// Properties:
/// * [atType]
/// * [supply]
@BuiltValue()
abstract class LazyErc1155 implements Built<LazyErc1155, LazyErc1155Builder> {
  @BuiltValueField(wireName: r'@type')
  LazyErc1155AtTypeEnum get atType;
  // enum atTypeEnum {  ERC1155,  };

  @BuiltValueField(wireName: r'supply')
  String get supply;

  LazyErc1155._();

  factory LazyErc1155([void updates(LazyErc1155Builder b)]) = _$LazyErc1155;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LazyErc1155Builder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LazyErc1155> get serializer => _$LazyErc1155Serializer();
}

class _$LazyErc1155Serializer implements PrimitiveSerializer<LazyErc1155> {
  @override
  final Iterable<Type> types = const [LazyErc1155, _$LazyErc1155];

  @override
  final String wireName = r'LazyErc1155';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LazyErc1155 object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(LazyErc1155AtTypeEnum),
    );
    yield r'supply';
    yield serializers.serialize(
      object.supply,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LazyErc1155 object, {
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
    required LazyErc1155Builder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LazyErc1155AtTypeEnum),
          ) as LazyErc1155AtTypeEnum;
          result.atType = valueDes;
          break;
        case r'supply':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supply = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LazyErc1155 deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LazyErc1155Builder();
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

class LazyErc1155AtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ERC1155')
  static const LazyErc1155AtTypeEnum eRC1155 = _$lazyErc1155AtTypeEnum_eRC1155;

  static Serializer<LazyErc1155AtTypeEnum> get serializer =>
      _$lazyErc1155AtTypeEnumSerializer;

  const LazyErc1155AtTypeEnum._(String name) : super(name);

  static BuiltSet<LazyErc1155AtTypeEnum> get values =>
      _$lazyErc1155AtTypeEnumValues;
  static LazyErc1155AtTypeEnum valueOf(String name) =>
      _$lazyErc1155AtTypeEnumValueOf(name);
}
