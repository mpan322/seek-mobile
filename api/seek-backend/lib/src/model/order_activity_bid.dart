//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/asset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_bid.g.dart';

/// OrderActivityBid
///
/// Properties:
/// * [atType]
/// * [hash]
/// * [maker]
/// * [make]
/// * [take]
/// * [price]
/// * [priceUsd]
@BuiltValue()
abstract class OrderActivityBid
    implements Built<OrderActivityBid, OrderActivityBidBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderActivityBidAtTypeEnum get atType;
  // enum atTypeEnum {  bid,  };

  @BuiltValueField(wireName: r'hash')
  String get hash;

  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'make')
  Asset get make;

  @BuiltValueField(wireName: r'take')
  Asset get take;

  @BuiltValueField(wireName: r'price')
  String get price;

  @BuiltValueField(wireName: r'priceUsd')
  String? get priceUsd;

  OrderActivityBid._();

  factory OrderActivityBid([void updates(OrderActivityBidBuilder b)]) =
      _$OrderActivityBid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityBidBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityBid> get serializer =>
      _$OrderActivityBidSerializer();
}

class _$OrderActivityBidSerializer
    implements PrimitiveSerializer<OrderActivityBid> {
  @override
  final Iterable<Type> types = const [OrderActivityBid, _$OrderActivityBid];

  @override
  final String wireName = r'OrderActivityBid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityBid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderActivityBidAtTypeEnum),
    );
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
    yield r'maker';
    yield serializers.serialize(
      object.maker,
      specifiedType: const FullType(String),
    );
    yield r'make';
    yield serializers.serialize(
      object.make,
      specifiedType: const FullType(Asset),
    );
    yield r'take';
    yield serializers.serialize(
      object.take,
      specifiedType: const FullType(Asset),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(String),
    );
    if (object.priceUsd != null) {
      yield r'priceUsd';
      yield serializers.serialize(
        object.priceUsd,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderActivityBid object, {
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
    required OrderActivityBidBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityBidAtTypeEnum),
          ) as OrderActivityBidAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
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
        case r'take':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.take.replace(valueDes);
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.price = valueDes;
          break;
        case r'priceUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.priceUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderActivityBid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityBidBuilder();
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

class OrderActivityBidAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bid')
  static const OrderActivityBidAtTypeEnum bid =
      _$orderActivityBidAtTypeEnum_bid;

  static Serializer<OrderActivityBidAtTypeEnum> get serializer =>
      _$orderActivityBidAtTypeEnumSerializer;

  const OrderActivityBidAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityBidAtTypeEnum> get values =>
      _$orderActivityBidAtTypeEnumValues;
  static OrderActivityBidAtTypeEnum valueOf(String name) =>
      _$orderActivityBidAtTypeEnumValueOf(name);
}
