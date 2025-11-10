//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_data_legacy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/model_part.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:seek_backend/src/model/order_rarible_v2_data_v1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_data.g.dart';

/// OrderData
///
/// Properties:
/// * [dataType]
/// * [payouts]
/// * [originFees]
/// * [fee]
/// * [exchange]
/// * [makerRelayerFee]
/// * [takerRelayerFee]
/// * [makerProtocolFee]
/// * [takerProtocolFee]
/// * [feeRecipient]
/// * [feeMethod]
/// * [side]
/// * [saleKind]
/// * [howToCall]
/// * [callData]
/// * [replacementPattern]
/// * [staticTarget]
/// * [staticExtraData]
/// * [extra]
@BuiltValue()
abstract class OrderData implements Built<OrderData, OrderDataBuilder> {
  /// One Of [OrderDataLegacy], [OrderOpenSeaV1DataV1], [OrderRaribleV2DataV1]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'dataType';

  static const Map<String, Type> discriminatorMapping = {
    r'LEGACY': OrderDataLegacy,
    r'OPEN_SEA_V1_DATA_V1': OrderOpenSeaV1DataV1,
    r'RARIBLE_V2_DATA_V1': OrderRaribleV2DataV1,
  };

  OrderData._();

  factory OrderData([void updates(OrderDataBuilder b)]) = _$OrderData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderData> get serializer => _$OrderDataSerializer();
}

extension OrderDataDiscriminatorExt on OrderData {
  String? get discriminatorValue {
    if (this is OrderDataLegacy) {
      return r'LEGACY';
    }
    if (this is OrderOpenSeaV1DataV1) {
      return r'OPEN_SEA_V1_DATA_V1';
    }
    if (this is OrderRaribleV2DataV1) {
      return r'RARIBLE_V2_DATA_V1';
    }
    return null;
  }
}

extension OrderDataBuilderDiscriminatorExt on OrderDataBuilder {
  String? get discriminatorValue {
    if (this is OrderDataLegacyBuilder) {
      return r'LEGACY';
    }
    if (this is OrderOpenSeaV1DataV1Builder) {
      return r'OPEN_SEA_V1_DATA_V1';
    }
    if (this is OrderRaribleV2DataV1Builder) {
      return r'RARIBLE_V2_DATA_V1';
    }
    return null;
  }
}

class _$OrderDataSerializer implements PrimitiveSerializer<OrderData> {
  @override
  final Iterable<Type> types = const [OrderData, _$OrderData];

  @override
  final String wireName = r'OrderData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    OrderData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  OrderData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderDataBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(OrderData.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      OrderDataLegacy,
      OrderOpenSeaV1DataV1,
      OrderRaribleV2DataV1,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'LEGACY':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OrderDataLegacy),
        ) as OrderDataLegacy;
        oneOfType = OrderDataLegacy;
        break;
      case r'OPEN_SEA_V1_DATA_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OrderOpenSeaV1DataV1),
        ) as OrderOpenSeaV1DataV1;
        oneOfType = OrderOpenSeaV1DataV1;
        break;
      case r'RARIBLE_V2_DATA_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OrderRaribleV2DataV1),
        ) as OrderRaribleV2DataV1;
        oneOfType = OrderRaribleV2DataV1;
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

class OrderDataDataTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1_DATA_V1')
  static const OrderDataDataTypeEnum oPENSEAV1DATAV1 =
      _$orderDataDataTypeEnum_oPENSEAV1DATAV1;

  static Serializer<OrderDataDataTypeEnum> get serializer =>
      _$orderDataDataTypeEnumSerializer;

  const OrderDataDataTypeEnum._(String name) : super(name);

  static BuiltSet<OrderDataDataTypeEnum> get values =>
      _$orderDataDataTypeEnumValues;
  static OrderDataDataTypeEnum valueOf(String name) =>
      _$orderDataDataTypeEnumValueOf(name);
}

class OrderDataFeeMethodEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'PROTOCOL_FEE')
  static const OrderDataFeeMethodEnum PROTOCOL_FEE =
      _$orderDataFeeMethodEnum_PROTOCOL_FEE;
  @BuiltValueEnumConst(wireName: r'SPLIT_FEE')
  static const OrderDataFeeMethodEnum SPLIT_FEE =
      _$orderDataFeeMethodEnum_SPLIT_FEE;

  static Serializer<OrderDataFeeMethodEnum> get serializer =>
      _$orderDataFeeMethodEnumSerializer;

  const OrderDataFeeMethodEnum._(String name) : super(name);

  static BuiltSet<OrderDataFeeMethodEnum> get values =>
      _$orderDataFeeMethodEnumValues;
  static OrderDataFeeMethodEnum valueOf(String name) =>
      _$orderDataFeeMethodEnumValueOf(name);
}

class OrderDataSideEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'BUY')
  static const OrderDataSideEnum BUY = _$orderDataSideEnum_BUY;
  @BuiltValueEnumConst(wireName: r'SELL')
  static const OrderDataSideEnum SELL = _$orderDataSideEnum_SELL;

  static Serializer<OrderDataSideEnum> get serializer =>
      _$orderDataSideEnumSerializer;

  const OrderDataSideEnum._(String name) : super(name);

  static BuiltSet<OrderDataSideEnum> get values => _$orderDataSideEnumValues;
  static OrderDataSideEnum valueOf(String name) =>
      _$orderDataSideEnumValueOf(name);
}

class OrderDataSaleKindEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'FIXED_PRICE')
  static const OrderDataSaleKindEnum FIXED_PRICE =
      _$orderDataSaleKindEnum_FIXED_PRICE;
  @BuiltValueEnumConst(wireName: r'DUTCH_AUCTION')
  static const OrderDataSaleKindEnum DUTCH_AUCTION =
      _$orderDataSaleKindEnum_DUTCH_AUCTION;

  static Serializer<OrderDataSaleKindEnum> get serializer =>
      _$orderDataSaleKindEnumSerializer;

  const OrderDataSaleKindEnum._(String name) : super(name);

  static BuiltSet<OrderDataSaleKindEnum> get values =>
      _$orderDataSaleKindEnumValues;
  static OrderDataSaleKindEnum valueOf(String name) =>
      _$orderDataSaleKindEnumValueOf(name);
}

class OrderDataHowToCallEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CALL')
  static const OrderDataHowToCallEnum CALL = _$orderDataHowToCallEnum_CALL;
  @BuiltValueEnumConst(wireName: r'DELEGATE_CALL')
  static const OrderDataHowToCallEnum DELEGATE_CALL =
      _$orderDataHowToCallEnum_DELEGATE_CALL;

  static Serializer<OrderDataHowToCallEnum> get serializer =>
      _$orderDataHowToCallEnumSerializer;

  const OrderDataHowToCallEnum._(String name) : super(name);

  static BuiltSet<OrderDataHowToCallEnum> get values =>
      _$orderDataHowToCallEnumValues;
  static OrderDataHowToCallEnum valueOf(String name) =>
      _$orderDataHowToCallEnumValueOf(name);
}
