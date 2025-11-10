//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/legacy_order_form.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:seek_backend/src/model/asset.dart';
import 'package:seek_backend/src/model/open_sea_v1_order_form.dart';
import 'package:seek_backend/src/model/rarible_v2_order_form.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_form.g.dart';

/// OrderForm
///
/// Properties:
/// * [maker]
/// * [make]
/// * [take]
/// * [salt]
/// * [type]
/// * [data]
/// * [taker]
/// * [start]
/// * [end]
/// * [signature]
@BuiltValue()
abstract class OrderForm implements Built<OrderForm, OrderFormBuilder> {
  @BuiltValueField(wireName: r'take')
  Asset get take;

  @BuiltValueField(wireName: r'salt')
  String get salt;

  @BuiltValueField(wireName: r'signature')
  String? get signature;

  @BuiltValueField(wireName: r'start')
  int? get start;

  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'end')
  int? get end;

  @BuiltValueField(wireName: r'taker')
  String? get taker;

  @BuiltValueField(wireName: r'make')
  Asset get make;

  /// One Of [LegacyOrderForm], [OpenSeaV1OrderForm], [RaribleV2OrderForm]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'OPEN_SEA_V1': OpenSeaV1OrderForm,
    r'RARIBLE_V1': LegacyOrderForm,
    r'RARIBLE_V2': RaribleV2OrderForm,
  };

  OrderForm._();

  factory OrderForm([void updates(OrderFormBuilder b)]) = _$OrderForm;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFormBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderForm> get serializer => _$OrderFormSerializer();
}

extension OrderFormDiscriminatorExt on OrderForm {
  String? get discriminatorValue {
    if (this is OpenSeaV1OrderForm) {
      return r'OPEN_SEA_V1';
    }
    if (this is LegacyOrderForm) {
      return r'RARIBLE_V1';
    }
    if (this is RaribleV2OrderForm) {
      return r'RARIBLE_V2';
    }
    return null;
  }
}

extension OrderFormBuilderDiscriminatorExt on OrderFormBuilder {
  String? get discriminatorValue {
    if (this is OpenSeaV1OrderFormBuilder) {
      return r'OPEN_SEA_V1';
    }
    if (this is LegacyOrderFormBuilder) {
      return r'RARIBLE_V1';
    }
    if (this is RaribleV2OrderFormBuilder) {
      return r'RARIBLE_V2';
    }
    return null;
  }
}

class _$OrderFormSerializer implements PrimitiveSerializer<OrderForm> {
  @override
  final Iterable<Type> types = const [OrderForm, _$OrderForm];

  @override
  final String wireName = r'OrderForm';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderForm object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'take';
    yield serializers.serialize(
      object.take,
      specifiedType: const FullType(Asset),
    );
    yield r'salt';
    yield serializers.serialize(
      object.salt,
      specifiedType: const FullType(String),
    );
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType(String),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(int),
      );
    }
    yield r'maker';
    yield serializers.serialize(
      object.maker,
      specifiedType: const FullType(String),
    );
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(int),
      );
    }
    if (object.taker != null) {
      yield r'taker';
      yield serializers.serialize(
        object.taker,
        specifiedType: const FullType(String),
      );
    }
    yield r'make';
    yield serializers.serialize(
      object.make,
      specifiedType: const FullType(Asset),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderForm object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderFormBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'take':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.take.replace(valueDes);
          break;
        case r'salt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.salt = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signature = valueDes;
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.start = valueDes;
          break;
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.end = valueDes;
          break;
        case r'taker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taker = valueDes;
          break;
        case r'make':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.make.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderForm deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFormBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(OrderForm.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      OpenSeaV1OrderForm,
      LegacyOrderForm,
      RaribleV2OrderForm,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'OPEN_SEA_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OpenSeaV1OrderForm),
        ) as OpenSeaV1OrderForm;
        oneOfType = OpenSeaV1OrderForm;
        break;
      case r'RARIBLE_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(LegacyOrderForm),
        ) as LegacyOrderForm;
        oneOfType = LegacyOrderForm;
        break;
      case r'RARIBLE_V2':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RaribleV2OrderForm),
        ) as RaribleV2OrderForm;
        oneOfType = RaribleV2OrderForm;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class OrderFormTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V1')
  static const OrderFormTypeEnum rARIBLEV1 = _$orderFormTypeEnum_rARIBLEV1;
  @BuiltValueEnumConst(wireName: r'RARIBLE_V2')
  static const OrderFormTypeEnum rARIBLEV2 = _$orderFormTypeEnum_rARIBLEV2;
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1')
  static const OrderFormTypeEnum oPENSEAV1 = _$orderFormTypeEnum_oPENSEAV1;

  static Serializer<OrderFormTypeEnum> get serializer =>
      _$orderFormTypeEnumSerializer;

  const OrderFormTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFormTypeEnum> get values => _$orderFormTypeEnumValues;
  static OrderFormTypeEnum valueOf(String name) =>
      _$orderFormTypeEnumValueOf(name);
}
