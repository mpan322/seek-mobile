//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_data_legacy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legacy_order_form.g.dart';

/// LegacyOrderForm
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class LegacyOrderForm
    implements Built<LegacyOrderForm, LegacyOrderFormBuilder> {
  @BuiltValueField(wireName: r'type')
  LegacyOrderFormTypeEnum get type;
  // enum typeEnum {  RARIBLE_V1,  };

  @BuiltValueField(wireName: r'data')
  OrderDataLegacy get data;

  LegacyOrderForm._();

  factory LegacyOrderForm([void updates(LegacyOrderFormBuilder b)]) =
      _$LegacyOrderForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegacyOrderFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegacyOrderForm> get serializer =>
      _$LegacyOrderFormSerializer();
}

class _$LegacyOrderFormSerializer
    implements PrimitiveSerializer<LegacyOrderForm> {
  @override
  final Iterable<Type> types = const [LegacyOrderForm, _$LegacyOrderForm];

  @override
  final String wireName = r'LegacyOrderForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegacyOrderForm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(LegacyOrderFormTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderDataLegacy),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LegacyOrderForm object, {
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
    required LegacyOrderFormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LegacyOrderFormTypeEnum),
          ) as LegacyOrderFormTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDataLegacy),
          ) as OrderDataLegacy;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LegacyOrderForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegacyOrderFormBuilder();
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

class LegacyOrderFormTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V1')
  static const LegacyOrderFormTypeEnum rARIBLEV1 =
      _$legacyOrderFormTypeEnum_rARIBLEV1;

  static Serializer<LegacyOrderFormTypeEnum> get serializer =>
      _$legacyOrderFormTypeEnumSerializer;

  const LegacyOrderFormTypeEnum._(String name) : super(name);

  static BuiltSet<LegacyOrderFormTypeEnum> get values =>
      _$legacyOrderFormTypeEnumValues;
  static LegacyOrderFormTypeEnum valueOf(String name) =>
      _$legacyOrderFormTypeEnumValueOf(name);
}
