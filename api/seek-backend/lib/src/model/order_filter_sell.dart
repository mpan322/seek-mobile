//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_filter_sell.g.dart';

/// OrderFilterSell
///
/// Properties:
/// * [atType]
@BuiltValue()
abstract class OrderFilterSell
    implements Built<OrderFilterSell, OrderFilterSellBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderFilterSellAtTypeEnum get atType;
  // enum atTypeEnum {  sell,  };

  OrderFilterSell._();

  factory OrderFilterSell([void updates(OrderFilterSellBuilder b)]) =
      _$OrderFilterSell;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterSellBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilterSell> get serializer =>
      _$OrderFilterSellSerializer();
}

class _$OrderFilterSellSerializer
    implements PrimitiveSerializer<OrderFilterSell> {
  @override
  final Iterable<Type> types = const [OrderFilterSell, _$OrderFilterSell];

  @override
  final String wireName = r'OrderFilterSell';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilterSell object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderFilterSellAtTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderFilterSell object, {
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
    required OrderFilterSellBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderFilterSellAtTypeEnum),
          ) as OrderFilterSellAtTypeEnum;
          result.atType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderFilterSell deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterSellBuilder();
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

class OrderFilterSellAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sell')
  static const OrderFilterSellAtTypeEnum sell =
      _$orderFilterSellAtTypeEnum_sell;

  static Serializer<OrderFilterSellAtTypeEnum> get serializer =>
      _$orderFilterSellAtTypeEnumSerializer;

  const OrderFilterSellAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterSellAtTypeEnum> get values =>
      _$orderFilterSellAtTypeEnumValues;
  static OrderFilterSellAtTypeEnum valueOf(String name) =>
      _$orderFilterSellAtTypeEnumValueOf(name);
}
