//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_side.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_side_match.g.dart';

/// OrderSideMatch
///
/// Properties:
/// * [type]
/// * [fill]
/// * [side]
/// * [taker]
/// * [counterHash]
/// * [makeUsd]
/// * [takeUsd]
/// * [makePriceUsd]
/// * [takePriceUsd]
@BuiltValue()
abstract class OrderSideMatch
    implements Built<OrderSideMatch, OrderSideMatchBuilder> {
  @BuiltValueField(wireName: r'type')
  OrderSideMatchTypeEnum get type;
  // enum typeEnum {  ORDER_SIDE_MATCH,  };

  @BuiltValueField(wireName: r'fill')
  String get fill;

  @BuiltValueField(wireName: r'side')
  OrderSide? get side;
  // enum sideEnum {  LEFT,  RIGHT,  };

  @BuiltValueField(wireName: r'taker')
  String? get taker;

  @BuiltValueField(wireName: r'counterHash')
  String? get counterHash;

  @BuiltValueField(wireName: r'makeUsd')
  String? get makeUsd;

  @BuiltValueField(wireName: r'takeUsd')
  String? get takeUsd;

  @BuiltValueField(wireName: r'makePriceUsd')
  String? get makePriceUsd;

  @BuiltValueField(wireName: r'takePriceUsd')
  String? get takePriceUsd;

  OrderSideMatch._();

  factory OrderSideMatch([void updates(OrderSideMatchBuilder b)]) =
      _$OrderSideMatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderSideMatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderSideMatch> get serializer =>
      _$OrderSideMatchSerializer();
}

class _$OrderSideMatchSerializer
    implements PrimitiveSerializer<OrderSideMatch> {
  @override
  final Iterable<Type> types = const [OrderSideMatch, _$OrderSideMatch];

  @override
  final String wireName = r'OrderSideMatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderSideMatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OrderSideMatchTypeEnum),
    );
    yield r'fill';
    yield serializers.serialize(
      object.fill,
      specifiedType: const FullType(String),
    );
    if (object.side != null) {
      yield r'side';
      yield serializers.serialize(
        object.side,
        specifiedType: const FullType(OrderSide),
      );
    }
    if (object.taker != null) {
      yield r'taker';
      yield serializers.serialize(
        object.taker,
        specifiedType: const FullType(String),
      );
    }
    if (object.counterHash != null) {
      yield r'counterHash';
      yield serializers.serialize(
        object.counterHash,
        specifiedType: const FullType(String),
      );
    }
    if (object.makeUsd != null) {
      yield r'makeUsd';
      yield serializers.serialize(
        object.makeUsd,
        specifiedType: const FullType(String),
      );
    }
    if (object.takeUsd != null) {
      yield r'takeUsd';
      yield serializers.serialize(
        object.takeUsd,
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
    if (object.takePriceUsd != null) {
      yield r'takePriceUsd';
      yield serializers.serialize(
        object.takePriceUsd,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderSideMatch object, {
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
    required OrderSideMatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderSideMatchTypeEnum),
          ) as OrderSideMatchTypeEnum;
          result.type = valueDes;
          break;
        case r'fill':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fill = valueDes;
          break;
        case r'side':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderSide),
          ) as OrderSide;
          result.side = valueDes;
          break;
        case r'taker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.taker = valueDes;
          break;
        case r'counterHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.counterHash = valueDes;
          break;
        case r'makeUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makeUsd = valueDes;
          break;
        case r'takeUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.takeUsd = valueDes;
          break;
        case r'makePriceUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.makePriceUsd = valueDes;
          break;
        case r'takePriceUsd':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.takePriceUsd = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderSideMatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderSideMatchBuilder();
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

class OrderSideMatchTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'ORDER_SIDE_MATCH')
  static const OrderSideMatchTypeEnum ORDER_SIDE_MATCH =
      _$orderSideMatchTypeEnum_ORDER_SIDE_MATCH;

  static Serializer<OrderSideMatchTypeEnum> get serializer =>
      _$orderSideMatchTypeEnumSerializer;

  const OrderSideMatchTypeEnum._(String name) : super(name);

  static BuiltSet<OrderSideMatchTypeEnum> get values =>
      _$orderSideMatchTypeEnumValues;
  static OrderSideMatchTypeEnum valueOf(String name) =>
      _$orderSideMatchTypeEnumValueOf(name);
}
