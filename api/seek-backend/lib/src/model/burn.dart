//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'burn.g.dart';

/// Burn
///
/// Properties:
/// * [atType]
@BuiltValue()
abstract class Burn implements Built<Burn, BurnBuilder> {
  @BuiltValueField(wireName: r'@type')
  BurnAtTypeEnum get atType;
  // enum atTypeEnum {  burn,  };

  Burn._();

  factory Burn([void updates(BurnBuilder b)]) = _$Burn;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BurnBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Burn> get serializer => _$BurnSerializer();
}

class _$BurnSerializer implements PrimitiveSerializer<Burn> {
  @override
  final Iterable<Type> types = const [Burn, _$Burn];

  @override
  final String wireName = r'Burn';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Burn object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(BurnAtTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Burn object, {
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
    required BurnBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BurnAtTypeEnum),
          ) as BurnAtTypeEnum;
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
  Burn deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BurnBuilder();
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

class BurnAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'burn')
  static const BurnAtTypeEnum burn = _$burnAtTypeEnum_burn;

  static Serializer<BurnAtTypeEnum> get serializer =>
      _$burnAtTypeEnumSerializer;

  const BurnAtTypeEnum._(String name) : super(name);

  static BuiltSet<BurnAtTypeEnum> get values => _$burnAtTypeEnumValues;
  static BurnAtTypeEnum valueOf(String name) => _$burnAtTypeEnumValueOf(name);
}
