//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'open_sea_v1_order_form.g.dart';

/// OpenSeaV1OrderForm
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class OpenSeaV1OrderForm
    implements Built<OpenSeaV1OrderForm, OpenSeaV1OrderFormBuilder> {
  @BuiltValueField(wireName: r'type')
  OpenSeaV1OrderFormTypeEnum get type;
  // enum typeEnum {  OPEN_SEA_V1,  };

  @BuiltValueField(wireName: r'data')
  OrderOpenSeaV1DataV1 get data;

  OpenSeaV1OrderForm._();

  factory OpenSeaV1OrderForm([void updates(OpenSeaV1OrderFormBuilder b)]) =
      _$OpenSeaV1OrderForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpenSeaV1OrderFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpenSeaV1OrderForm> get serializer =>
      _$OpenSeaV1OrderFormSerializer();
}

class _$OpenSeaV1OrderFormSerializer
    implements PrimitiveSerializer<OpenSeaV1OrderForm> {
  @override
  final Iterable<Type> types = const [OpenSeaV1OrderForm, _$OpenSeaV1OrderForm];

  @override
  final String wireName = r'OpenSeaV1OrderForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpenSeaV1OrderForm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OpenSeaV1OrderFormTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderOpenSeaV1DataV1),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OpenSeaV1OrderForm object, {
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
    required OpenSeaV1OrderFormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OpenSeaV1OrderFormTypeEnum),
          ) as OpenSeaV1OrderFormTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderOpenSeaV1DataV1),
          ) as OrderOpenSeaV1DataV1;
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
  OpenSeaV1OrderForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpenSeaV1OrderFormBuilder();
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

class OpenSeaV1OrderFormTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1')
  static const OpenSeaV1OrderFormTypeEnum oPENSEAV1 =
      _$openSeaV1OrderFormTypeEnum_oPENSEAV1;

  static Serializer<OpenSeaV1OrderFormTypeEnum> get serializer =>
      _$openSeaV1OrderFormTypeEnumSerializer;

  const OpenSeaV1OrderFormTypeEnum._(String name) : super(name);

  static BuiltSet<OpenSeaV1OrderFormTypeEnum> get values =>
      _$openSeaV1OrderFormTypeEnumValues;
  static OpenSeaV1OrderFormTypeEnum valueOf(String name) =>
      _$openSeaV1OrderFormTypeEnumValueOf(name);
}
