//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/legacy_order.dart';
import 'package:seek_backend/src/model/open_sea_v1_order.dart';
import 'package:seek_backend/src/model/rarible_v2_order.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_exchange_history.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:seek_backend/src/model/asset.dart';
import 'package:seek_backend/src/model/order_price_history_record.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order.g.dart';

/// Order
///
/// Properties:
/// * [maker]
/// * [make]
/// * [take]
/// * [fill]
/// * [makeStock]
/// * [cancelled]
/// * [salt]
/// * [createdAt]
/// * [lastUpdateAt]
/// * [hash]
/// * [type]
/// * [data]
/// * [taker]
/// * [start]
/// * [end]
/// * [signature]
/// * [pending]
/// * [makeBalance]
/// * [makePriceUsd]
/// * [takePriceUsd]
/// * [priceHistory]
@BuiltValue()
abstract class Order implements Built<Order, OrderBuilder> {
  @BuiltValueField(wireName: r'salt')
  String get salt;

  @BuiltValueField(wireName: r'signature')
  String? get signature;

  @BuiltValueField(wireName: r'pending')
  BuiltList<OrderExchangeHistory>? get pending;

  @BuiltValueField(wireName: r'start')
  int? get start;

  @BuiltValueField(wireName: r'makeBalance')
  String? get makeBalance;

  @BuiltValueField(wireName: r'takePriceUsd')
  String? get takePriceUsd;

  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'fill')
  String get fill;

  @BuiltValueField(wireName: r'take')
  Asset get take;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'makeStock')
  String get makeStock;

  @BuiltValueField(wireName: r'cancelled')
  bool get cancelled;

  @BuiltValueField(wireName: r'end')
  int? get end;

  @BuiltValueField(wireName: r'lastUpdateAt')
  DateTime get lastUpdateAt;

  @BuiltValueField(wireName: r'taker')
  String? get taker;

  @BuiltValueField(wireName: r'makePriceUsd')
  String? get makePriceUsd;

  @BuiltValueField(wireName: r'make')
  Asset get make;

  @BuiltValueField(wireName: r'hash')
  String get hash;

  @BuiltValueField(wireName: r'priceHistory')
  BuiltList<OrderPriceHistoryRecord>? get priceHistory;

  /// One Of [LegacyOrder], [OpenSeaV1Order], [RaribleV2Order]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'OPEN_SEA_V1': OpenSeaV1Order,
    r'RARIBLE_V1': LegacyOrder,
    r'RARIBLE_V2': RaribleV2Order,
  };

  Order._();

  factory Order([void updates(OrderBuilder b)]) = _$Order;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderBuilder b) => b..priceHistory = ListBuilder();

  @BuiltValueSerializer(custom: true)
  static Serializer<Order> get serializer => _$OrderSerializer();
}

extension OrderDiscriminatorExt on Order {
  String? get discriminatorValue {
    if (this is OpenSeaV1Order) {
      return r'OPEN_SEA_V1';
    }
    if (this is LegacyOrder) {
      return r'RARIBLE_V1';
    }
    if (this is RaribleV2Order) {
      return r'RARIBLE_V2';
    }
    return null;
  }
}

extension OrderBuilderDiscriminatorExt on OrderBuilder {
  String? get discriminatorValue {
    if (this is OpenSeaV1OrderBuilder) {
      return r'OPEN_SEA_V1';
    }
    if (this is LegacyOrderBuilder) {
      return r'RARIBLE_V1';
    }
    if (this is RaribleV2OrderBuilder) {
      return r'RARIBLE_V2';
    }
    return null;
  }
}

class _$OrderSerializer implements PrimitiveSerializer<Order> {
  @override
  final Iterable<Type> types = const [Order, _$Order];

  @override
  final String wireName = r'Order';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Order object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.pending != null) {
      yield r'pending';
      yield serializers.serialize(
        object.pending,
        specifiedType:
            const FullType(BuiltList, [FullType(OrderExchangeHistory)]),
      );
    }
    if (object.start != null) {
      yield r'start';
      yield serializers.serialize(
        object.start,
        specifiedType: const FullType(int),
      );
    }
    if (object.makeBalance != null) {
      yield r'makeBalance';
      yield serializers.serialize(
        object.makeBalance,
        specifiedType: const FullType(String),
      );
    }
    if (object.takePriceUsd != null) {
      yield r'takePriceUsd';
      yield serializers.serialize(
        object.takePriceUsd,
        specifiedType: const FullType(String),
      );
    }
    yield r'maker';
    yield serializers.serialize(
      object.maker,
      specifiedType: const FullType(String),
    );
    yield r'fill';
    yield serializers.serialize(
      object.fill,
      specifiedType: const FullType(String),
    );
    yield r'take';
    yield serializers.serialize(
      object.take,
      specifiedType: const FullType(Asset),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'makeStock';
    yield serializers.serialize(
      object.makeStock,
      specifiedType: const FullType(String),
    );
    yield r'cancelled';
    yield serializers.serialize(
      object.cancelled,
      specifiedType: const FullType(bool),
    );
    if (object.end != null) {
      yield r'end';
      yield serializers.serialize(
        object.end,
        specifiedType: const FullType(int),
      );
    }
    yield r'lastUpdateAt';
    yield serializers.serialize(
      object.lastUpdateAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.taker != null) {
      yield r'taker';
      yield serializers.serialize(
        object.taker,
        specifiedType: const FullType(String),
      );
    }
    if (object.makePriceUsd != null) {
      yield r'makePriceUsd';
      yield serializers.serialize(
        object.makePriceUsd,
        specifiedType: const FullType(String),
      );
    }
    yield r'make';
    yield serializers.serialize(
      object.make,
      specifiedType: const FullType(Asset),
    );
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
    if (object.priceHistory != null) {
      yield r'priceHistory';
      yield serializers.serialize(
        object.priceHistory,
        specifiedType:
            const FullType(BuiltList, [FullType(OrderPriceHistoryRecord)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Order object, {
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
    required OrderBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'pending':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OrderExchangeHistory)]),
          ) as BuiltList<OrderExchangeHistory>;
          result.pending.replace(valueDes);
          break;
        case r'start':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.start = valueDes;
          break;
        case r'makeBalance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makeBalance = valueDes;
          break;
        case r'takePriceUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.takePriceUsd = valueDes;
          break;
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        case r'fill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fill = valueDes;
          break;
        case r'take':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.take.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'makeStock':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makeStock = valueDes;
          break;
        case r'cancelled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.cancelled = valueDes;
          break;
        case r'end':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.end = valueDes;
          break;
        case r'lastUpdateAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdateAt = valueDes;
          break;
        case r'taker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taker = valueDes;
          break;
        case r'makePriceUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makePriceUsd = valueDes;
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
        case r'priceHistory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(OrderPriceHistoryRecord)]),
          ) as BuiltList<OrderPriceHistoryRecord>;
          result.priceHistory.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Order deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex = serializedList.indexOf(Order.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      OpenSeaV1Order,
      LegacyOrder,
      RaribleV2Order,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'OPEN_SEA_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OpenSeaV1Order),
        ) as OpenSeaV1Order;
        oneOfType = OpenSeaV1Order;
        break;
      case r'RARIBLE_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(LegacyOrder),
        ) as LegacyOrder;
        oneOfType = LegacyOrder;
        break;
      case r'RARIBLE_V2':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RaribleV2Order),
        ) as RaribleV2Order;
        oneOfType = RaribleV2Order;
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

class OrderTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V1')
  static const OrderTypeEnum rARIBLEV1 = _$orderTypeEnum_rARIBLEV1;
  @BuiltValueEnumConst(wireName: r'RARIBLE_V2')
  static const OrderTypeEnum rARIBLEV2 = _$orderTypeEnum_rARIBLEV2;
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1')
  static const OrderTypeEnum oPENSEAV1 = _$orderTypeEnum_oPENSEAV1;

  static Serializer<OrderTypeEnum> get serializer => _$orderTypeEnumSerializer;

  const OrderTypeEnum._(String name) : super(name);

  static BuiltSet<OrderTypeEnum> get values => _$orderTypeEnumValues;
  static OrderTypeEnum valueOf(String name) => _$orderTypeEnumValueOf(name);
}
