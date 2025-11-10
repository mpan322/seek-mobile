//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_activity_match_side.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_match.g.dart';

/// OrderActivityMatch
///
/// Properties:
/// * [atType]
/// * [left]
/// * [right]
/// * [price]
/// * [transactionHash]
/// * [blockHash]
/// * [blockNumber]
/// * [logIndex]
/// * [priceUsd]
@BuiltValue()
abstract class OrderActivityMatch
    implements Built<OrderActivityMatch, OrderActivityMatchBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderActivityMatchAtTypeEnum get atType;
  // enum atTypeEnum {  match,  };

  @BuiltValueField(wireName: r'left')
  OrderActivityMatchSide get left;

  @BuiltValueField(wireName: r'right')
  OrderActivityMatchSide get right;

  @BuiltValueField(wireName: r'price')
  String get price;

  @BuiltValueField(wireName: r'transactionHash')
  String get transactionHash;

  @BuiltValueField(wireName: r'blockHash')
  String get blockHash;

  @BuiltValueField(wireName: r'blockNumber')
  int get blockNumber;

  @BuiltValueField(wireName: r'logIndex')
  int get logIndex;

  @BuiltValueField(wireName: r'priceUsd')
  String? get priceUsd;

  OrderActivityMatch._();

  factory OrderActivityMatch([void updates(OrderActivityMatchBuilder b)]) =
      _$OrderActivityMatch;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityMatchBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityMatch> get serializer =>
      _$OrderActivityMatchSerializer();
}

class _$OrderActivityMatchSerializer
    implements PrimitiveSerializer<OrderActivityMatch> {
  @override
  final Iterable<Type> types = const [OrderActivityMatch, _$OrderActivityMatch];

  @override
  final String wireName = r'OrderActivityMatch';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityMatch object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderActivityMatchAtTypeEnum),
    );
    yield r'left';
    yield serializers.serialize(
      object.left,
      specifiedType: const FullType(OrderActivityMatchSide),
    );
    yield r'right';
    yield serializers.serialize(
      object.right,
      specifiedType: const FullType(OrderActivityMatchSide),
    );
    yield r'price';
    yield serializers.serialize(
      object.price,
      specifiedType: const FullType(String),
    );
    yield r'transactionHash';
    yield serializers.serialize(
      object.transactionHash,
      specifiedType: const FullType(String),
    );
    yield r'blockHash';
    yield serializers.serialize(
      object.blockHash,
      specifiedType: const FullType(String),
    );
    yield r'blockNumber';
    yield serializers.serialize(
      object.blockNumber,
      specifiedType: const FullType(int),
    );
    yield r'logIndex';
    yield serializers.serialize(
      object.logIndex,
      specifiedType: const FullType(int),
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
    OrderActivityMatch object, {
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
    required OrderActivityMatchBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityMatchAtTypeEnum),
          ) as OrderActivityMatchAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'left':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityMatchSide),
          ) as OrderActivityMatchSide;
          result.left.replace(valueDes);
          break;
        case r'right':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityMatchSide),
          ) as OrderActivityMatchSide;
          result.right.replace(valueDes);
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.price = valueDes;
          break;
        case r'transactionHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.transactionHash = valueDes;
          break;
        case r'blockHash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.blockHash = valueDes;
          break;
        case r'blockNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.blockNumber = valueDes;
          break;
        case r'logIndex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.logIndex = valueDes;
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
  OrderActivityMatch deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityMatchBuilder();
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

class OrderActivityMatchAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'match')
  static const OrderActivityMatchAtTypeEnum match =
      _$orderActivityMatchAtTypeEnum_match;

  static Serializer<OrderActivityMatchAtTypeEnum> get serializer =>
      _$orderActivityMatchAtTypeEnumSerializer;

  const OrderActivityMatchAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityMatchAtTypeEnum> get values =>
      _$orderActivityMatchAtTypeEnumValues;
  static OrderActivityMatchAtTypeEnum valueOf(String name) =>
      _$orderActivityMatchAtTypeEnumValueOf(name);
}
