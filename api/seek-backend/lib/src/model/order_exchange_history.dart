//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_cancel.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_side.dart';
import 'package:seek_backend/src/model/asset.dart';
import 'package:seek_backend/src/model/order_side_match.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_exchange_history.g.dart';

/// OrderExchangeHistory
///
/// Properties:
/// * [hash]
/// * [date]
/// * [type]
/// * [fill]
/// * [make]
/// * [take]
/// * [maker]
/// * [owner]
/// * [side]
/// * [taker]
/// * [counterHash]
/// * [makeUsd]
/// * [takeUsd]
/// * [makePriceUsd]
/// * [takePriceUsd]
@BuiltValue()
abstract class OrderExchangeHistory
    implements Built<OrderExchangeHistory, OrderExchangeHistoryBuilder> {
  @BuiltValueField(wireName: r'date')
  DateTime get date;

  @BuiltValueField(wireName: r'take')
  Asset? get take;

  @BuiltValueField(wireName: r'maker')
  String? get maker;

  @BuiltValueField(wireName: r'make')
  Asset? get make;

  @BuiltValueField(wireName: r'hash')
  String get hash;

  /// One Of [OrderCancel], [OrderSideMatch]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'CANCEL': OrderCancel,
    r'ORDER_SIDE_MATCH': OrderSideMatch,
  };

  OrderExchangeHistory._();

  factory OrderExchangeHistory([void updates(OrderExchangeHistoryBuilder b)]) =
      _$OrderExchangeHistory;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderExchangeHistoryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderExchangeHistory> get serializer =>
      _$OrderExchangeHistorySerializer();
}

extension OrderExchangeHistoryDiscriminatorExt on OrderExchangeHistory {
  String? get discriminatorValue {
    if (this is OrderCancel) {
      return r'CANCEL';
    }
    if (this is OrderSideMatch) {
      return r'ORDER_SIDE_MATCH';
    }
    return null;
  }
}

extension OrderExchangeHistoryBuilderDiscriminatorExt
    on OrderExchangeHistoryBuilder {
  String? get discriminatorValue {
    if (this is OrderCancelBuilder) {
      return r'CANCEL';
    }
    if (this is OrderSideMatchBuilder) {
      return r'ORDER_SIDE_MATCH';
    }
    return null;
  }
}

class _$OrderExchangeHistorySerializer
    implements PrimitiveSerializer<OrderExchangeHistory> {
  @override
  final Iterable<Type> types = const [
    OrderExchangeHistory,
    _$OrderExchangeHistory
  ];

  @override
  final String wireName = r'OrderExchangeHistory';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderExchangeHistory object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'date';
    yield serializers.serialize(
      object.date,
      specifiedType: const FullType(DateTime),
    );
    if (object.take != null) {
      yield r'take';
      yield serializers.serialize(
        object.take,
        specifiedType: const FullType(Asset),
      );
    }
    if (object.maker != null) {
      yield r'maker';
      yield serializers.serialize(
        object.maker,
        specifiedType: const FullType(String),
      );
    }
    if (object.make != null) {
      yield r'make';
      yield serializers.serialize(
        object.make,
        specifiedType: const FullType(Asset),
      );
    }
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderExchangeHistory object, {
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
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderExchangeHistoryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.date = valueDes;
          break;
        case r'take':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.take.replace(valueDes);
          break;
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        case r'make':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.make.replace(valueDes);
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderExchangeHistory deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderExchangeHistoryBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(OrderExchangeHistory.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      OrderCancel,
      OrderSideMatch,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'CANCEL':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OrderCancel),
        ) as OrderCancel;
        oneOfType = OrderCancel;
        break;
      case r'ORDER_SIDE_MATCH':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OrderSideMatch),
        ) as OrderSideMatch;
        oneOfType = OrderSideMatch;
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

class OrderExchangeHistoryTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'CANCEL')
  static const OrderExchangeHistoryTypeEnum CANCEL =
      _$orderExchangeHistoryTypeEnum_CANCEL;
  @BuiltValueEnumConst(wireName: r'ORDER_SIDE_MATCH')
  static const OrderExchangeHistoryTypeEnum ORDER_SIDE_MATCH =
      _$orderExchangeHistoryTypeEnum_ORDER_SIDE_MATCH;

  static Serializer<OrderExchangeHistoryTypeEnum> get serializer =>
      _$orderExchangeHistoryTypeEnumSerializer;

  const OrderExchangeHistoryTypeEnum._(String name) : super(name);

  static BuiltSet<OrderExchangeHistoryTypeEnum> get values =>
      _$orderExchangeHistoryTypeEnumValues;
  static OrderExchangeHistoryTypeEnum valueOf(String name) =>
      _$orderExchangeHistoryTypeEnumValueOf(name);
}
