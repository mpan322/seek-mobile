//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transfer.g.dart';

/// Transfer
///
/// Properties:
/// * [atType]
/// * [from]
@BuiltValue()
abstract class Transfer implements Built<Transfer, TransferBuilder> {
  @BuiltValueField(wireName: r'@type')
  TransferAtTypeEnum get atType;
  // enum atTypeEnum {  transfer,  };

  @BuiltValueField(wireName: r'from')
  String get from;

  Transfer._();

  factory Transfer([void updates(TransferBuilder b)]) = _$Transfer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransferBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Transfer> get serializer => _$TransferSerializer();
}

class _$TransferSerializer implements PrimitiveSerializer<Transfer> {
  @override
  final Iterable<Type> types = const [Transfer, _$Transfer];

  @override
  final String wireName = r'Transfer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Transfer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(TransferAtTypeEnum),
    );
    yield r'from';
    yield serializers.serialize(
      object.from,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Transfer object, {
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
    required TransferBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TransferAtTypeEnum),
          ) as TransferAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'from':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.from = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Transfer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TransferBuilder();
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

class TransferAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'transfer')
  static const TransferAtTypeEnum transfer = _$transferAtTypeEnum_transfer;

  static Serializer<TransferAtTypeEnum> get serializer =>
      _$transferAtTypeEnumSerializer;

  const TransferAtTypeEnum._(String name) : super(name);

  static BuiltSet<TransferAtTypeEnum> get values => _$transferAtTypeEnumValues;
  static TransferAtTypeEnum valueOf(String name) =>
      _$transferAtTypeEnumValueOf(name);
}
