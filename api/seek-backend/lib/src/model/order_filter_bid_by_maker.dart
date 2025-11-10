//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_filter_bid_by_maker.g.dart';

/// OrderFilterBidByMaker
///
/// Properties:
/// * [atType]
/// * [maker]
@BuiltValue()
abstract class OrderFilterBidByMaker
    implements Built<OrderFilterBidByMaker, OrderFilterBidByMakerBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderFilterBidByMakerAtTypeEnum get atType;
  // enum atTypeEnum {  bid_by_maker,  };

  @BuiltValueField(wireName: r'maker')
  String get maker;

  OrderFilterBidByMaker._();

  factory OrderFilterBidByMaker(
      [void updates(OrderFilterBidByMakerBuilder b)]) = _$OrderFilterBidByMaker;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterBidByMakerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilterBidByMaker> get serializer =>
      _$OrderFilterBidByMakerSerializer();
}

class _$OrderFilterBidByMakerSerializer
    implements PrimitiveSerializer<OrderFilterBidByMaker> {
  @override
  final Iterable<Type> types = const [
    OrderFilterBidByMaker,
    _$OrderFilterBidByMaker
  ];

  @override
  final String wireName = r'OrderFilterBidByMaker';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilterBidByMaker object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderFilterBidByMakerAtTypeEnum),
    );
    yield r'maker';
    yield serializers.serialize(
      object.maker,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderFilterBidByMaker object, {
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
    required OrderFilterBidByMakerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderFilterBidByMakerAtTypeEnum),
          ) as OrderFilterBidByMakerAtTypeEnum;
          result.atType = valueDes;
          break;
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderFilterBidByMaker deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterBidByMakerBuilder();
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

class OrderFilterBidByMakerAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'bid_by_maker')
  static const OrderFilterBidByMakerAtTypeEnum bidByMaker =
      _$orderFilterBidByMakerAtTypeEnum_bidByMaker;

  static Serializer<OrderFilterBidByMakerAtTypeEnum> get serializer =>
      _$orderFilterBidByMakerAtTypeEnumSerializer;

  const OrderFilterBidByMakerAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterBidByMakerAtTypeEnum> get values =>
      _$orderFilterBidByMakerAtTypeEnumValues;
  static OrderFilterBidByMakerAtTypeEnum valueOf(String name) =>
      _$orderFilterBidByMakerAtTypeEnumValueOf(name);
}
