//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'mint.g.dart';

/// Mint
///
/// Properties:
/// * [atType]
@BuiltValue()
abstract class Mint implements Built<Mint, MintBuilder> {
  @BuiltValueField(wireName: r'@type')
  MintAtTypeEnum? get atType;
  // enum atTypeEnum {  mint,  };

  Mint._();

  factory Mint([void updates(MintBuilder b)]) = _$Mint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MintBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Mint> get serializer => _$MintSerializer();
}

class _$MintSerializer implements PrimitiveSerializer<Mint> {
  @override
  final Iterable<Type> types = const [Mint, _$Mint];

  @override
  final String wireName = r'Mint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Mint object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.atType != null) {
      yield r'@type';
      yield serializers.serialize(
        object.atType,
        specifiedType: const FullType(MintAtTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Mint object, {
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
    required MintBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(MintAtTypeEnum),
          ) as MintAtTypeEnum;
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
  Mint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = MintBuilder();
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

class MintAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'mint')
  static const MintAtTypeEnum mint = _$mintAtTypeEnum_mint;

  static Serializer<MintAtTypeEnum> get serializer =>
      _$mintAtTypeEnumSerializer;

  const MintAtTypeEnum._(String name) : super(name);

  static BuiltSet<MintAtTypeEnum> get values => _$mintAtTypeEnumValues;
  static MintAtTypeEnum valueOf(String name) => _$mintAtTypeEnumValueOf(name);
}
