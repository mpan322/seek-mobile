//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_filter_sell_by_maker.g.dart';

/// OrderFilterSellByMaker
///
/// Properties:
/// * [atType]
/// * [maker]
@BuiltValue()
abstract class OrderFilterSellByMaker
    implements Built<OrderFilterSellByMaker, OrderFilterSellByMakerBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderFilterSellByMakerAtTypeEnum get atType;
  // enum atTypeEnum {  sell_by_maker,  };

  @BuiltValueField(wireName: r'maker')
  String get maker;

  OrderFilterSellByMaker._();

  factory OrderFilterSellByMaker(
          [void updates(OrderFilterSellByMakerBuilder b)]) =
      _$OrderFilterSellByMaker;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterSellByMakerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilterSellByMaker> get serializer =>
      _$OrderFilterSellByMakerSerializer();
}

class _$OrderFilterSellByMakerSerializer
    implements PrimitiveSerializer<OrderFilterSellByMaker> {
  @override
  final Iterable<Type> types = const [
    OrderFilterSellByMaker,
    _$OrderFilterSellByMaker
  ];

  @override
  final String wireName = r'OrderFilterSellByMaker';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilterSellByMaker object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderFilterSellByMakerAtTypeEnum),
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
    OrderFilterSellByMaker object, {
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
    required OrderFilterSellByMakerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderFilterSellByMakerAtTypeEnum),
          ) as OrderFilterSellByMakerAtTypeEnum;
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
  OrderFilterSellByMaker deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterSellByMakerBuilder();
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

class OrderFilterSellByMakerAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'sell_by_maker')
  static const OrderFilterSellByMakerAtTypeEnum sellByMaker =
      _$orderFilterSellByMakerAtTypeEnum_sellByMaker;

  static Serializer<OrderFilterSellByMakerAtTypeEnum> get serializer =>
      _$orderFilterSellByMakerAtTypeEnumSerializer;

  const OrderFilterSellByMakerAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterSellByMakerAtTypeEnum> get values =>
      _$orderFilterSellByMakerAtTypeEnumValues;
  static OrderFilterSellByMakerAtTypeEnum valueOf(String name) =>
      _$orderFilterSellByMakerAtTypeEnumValueOf(name);
}
