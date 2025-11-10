//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_filter_all.g.dart';

/// OrderFilterAll
///
/// Properties:
/// * [atType]
@BuiltValue()
abstract class OrderFilterAll
    implements Built<OrderFilterAll, OrderFilterAllBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderFilterAllAtTypeEnum get atType;
  // enum atTypeEnum {  all,  };

  OrderFilterAll._();

  factory OrderFilterAll([void updates(OrderFilterAllBuilder b)]) =
      _$OrderFilterAll;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderFilterAllBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderFilterAll> get serializer =>
      _$OrderFilterAllSerializer();
}

class _$OrderFilterAllSerializer
    implements PrimitiveSerializer<OrderFilterAll> {
  @override
  final Iterable<Type> types = const [OrderFilterAll, _$OrderFilterAll];

  @override
  final String wireName = r'OrderFilterAll';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderFilterAll object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderFilterAllAtTypeEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderFilterAll object, {
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
    required OrderFilterAllBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderFilterAllAtTypeEnum),
          ) as OrderFilterAllAtTypeEnum;
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
  OrderFilterAll deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderFilterAllBuilder();
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

class OrderFilterAllAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'all')
  static const OrderFilterAllAtTypeEnum all = _$orderFilterAllAtTypeEnum_all;

  static Serializer<OrderFilterAllAtTypeEnum> get serializer =>
      _$orderFilterAllAtTypeEnumSerializer;

  const OrderFilterAllAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderFilterAllAtTypeEnum> get values =>
      _$orderFilterAllAtTypeEnumValues;
  static OrderFilterAllAtTypeEnum valueOf(String name) =>
      _$orderFilterAllAtTypeEnumValueOf(name);
}
