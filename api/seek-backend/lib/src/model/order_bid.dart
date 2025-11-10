//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/open_sea_v1_order_bid.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:seek_backend/src/model/asset.dart';
import 'package:seek_backend/src/model/legacy_order_bid.dart';
import 'package:seek_backend/src/model/order_bid_status.dart';
import 'package:seek_backend/src/model/rarible_v2_order_bid.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'order_bid.g.dart';

/// OrderBid
///
/// Properties:
/// * [orderHash]
/// * [status]
/// * [maker]
/// * [make]
/// * [take]
/// * [fill]
/// * [makeStock]
/// * [cancelled]
/// * [salt]
/// * [createdAt]
/// * [type]
/// * [data]
/// * [taker]
/// * [makeBalance]
/// * [makePriceUsd]
/// * [takePriceUsd]
/// * [signature]
@BuiltValue()
abstract class OrderBid implements Built<OrderBid, OrderBidBuilder> {
  @BuiltValueField(wireName: r'salt')
  String get salt;

  @BuiltValueField(wireName: r'signature')
  String? get signature;

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

  @BuiltValueField(wireName: r'taker')
  String? get taker;

  @BuiltValueField(wireName: r'makePriceUsd')
  String? get makePriceUsd;

  @BuiltValueField(wireName: r'make')
  Asset get make;

  @BuiltValueField(wireName: r'orderHash')
  String get orderHash;

  @BuiltValueField(wireName: r'status')
  OrderBidStatus get status;
  // enum statusEnum {  ACTIVE,  FILLED,  HISTORICAL,  INACTIVE,  CANCELLED,  };

  /// One Of [LegacyOrderBid], [OpenSeaV1OrderBid], [RaribleV2OrderBid]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'OPEN_SEA_V1': OpenSeaV1OrderBid,
    r'RARIBLE_V1': LegacyOrderBid,
    r'RARIBLE_V2': RaribleV2OrderBid,
  };

  OrderBid._();

  factory OrderBid([void updates(OrderBidBuilder b)]) = _$OrderBid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderBidBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderBid> get serializer => _$OrderBidSerializer();
}

extension OrderBidDiscriminatorExt on OrderBid {
  String? get discriminatorValue {
    if (this is OpenSeaV1OrderBid) {
      return r'OPEN_SEA_V1';
    }
    if (this is LegacyOrderBid) {
      return r'RARIBLE_V1';
    }
    if (this is RaribleV2OrderBid) {
      return r'RARIBLE_V2';
    }
    return null;
  }
}

extension OrderBidBuilderDiscriminatorExt on OrderBidBuilder {
  String? get discriminatorValue {
    if (this is OpenSeaV1OrderBidBuilder) {
      return r'OPEN_SEA_V1';
    }
    if (this is LegacyOrderBidBuilder) {
      return r'RARIBLE_V1';
    }
    if (this is RaribleV2OrderBidBuilder) {
      return r'RARIBLE_V2';
    }
    return null;
  }
}

class _$OrderBidSerializer implements PrimitiveSerializer<OrderBid> {
  @override
  final Iterable<Type> types = const [OrderBid, _$OrderBid];

  @override
  final String wireName = r'OrderBid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderBid object, {
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
    yield r'orderHash';
    yield serializers.serialize(
      object.orderHash,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(OrderBidStatus),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderBid object, {
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
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required OrderBidBuilder result,
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
        case r'orderHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderHash = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderBidStatus),
          ) as OrderBidStatus;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderBid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderBidBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(OrderBid.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      OpenSeaV1OrderBid,
      LegacyOrderBid,
      RaribleV2OrderBid,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'OPEN_SEA_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(OpenSeaV1OrderBid),
        ) as OpenSeaV1OrderBid;
        oneOfType = OpenSeaV1OrderBid;
        break;
      case r'RARIBLE_V1':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(LegacyOrderBid),
        ) as LegacyOrderBid;
        oneOfType = LegacyOrderBid;
        break;
      case r'RARIBLE_V2':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(RaribleV2OrderBid),
        ) as RaribleV2OrderBid;
        oneOfType = RaribleV2OrderBid;
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

class OrderBidTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V1')
  static const OrderBidTypeEnum rARIBLEV1 = _$orderBidTypeEnum_rARIBLEV1;
  @BuiltValueEnumConst(wireName: r'RARIBLE_V2')
  static const OrderBidTypeEnum rARIBLEV2 = _$orderBidTypeEnum_rARIBLEV2;
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1')
  static const OrderBidTypeEnum oPENSEAV1 = _$orderBidTypeEnum_oPENSEAV1;

  static Serializer<OrderBidTypeEnum> get serializer =>
      _$orderBidTypeEnumSerializer;

  const OrderBidTypeEnum._(String name) : super(name);

  static BuiltSet<OrderBidTypeEnum> get values => _$orderBidTypeEnumValues;
  static OrderBidTypeEnum valueOf(String name) =>
      _$orderBidTypeEnumValueOf(name);
}
