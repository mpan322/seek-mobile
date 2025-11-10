//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/asset.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_match_side.g.dart';

/// OrderActivityMatchSide
///
/// Properties:
/// * [maker]
/// * [hash]
/// * [asset]
/// * [type]
@BuiltValue()
abstract class OrderActivityMatchSide
    implements Built<OrderActivityMatchSide, OrderActivityMatchSideBuilder> {
  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'hash')
  String get hash;

  @BuiltValueField(wireName: r'asset')
  Asset get asset;

  @BuiltValueField(wireName: r'type')
  OrderActivityMatchSideTypeEnum? get type;
  // enum typeEnum {  SELL,  BID,  };

  OrderActivityMatchSide._();

  factory OrderActivityMatchSide(
          [void updates(OrderActivityMatchSideBuilder b)]) =
      _$OrderActivityMatchSide;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityMatchSideBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityMatchSide> get serializer =>
      _$OrderActivityMatchSideSerializer();
}

class _$OrderActivityMatchSideSerializer
    implements PrimitiveSerializer<OrderActivityMatchSide> {
  @override
  final Iterable<Type> types = const [
    OrderActivityMatchSide,
    _$OrderActivityMatchSide
  ];

  @override
  final String wireName = r'OrderActivityMatchSide';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityMatchSide object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'maker';
    yield serializers.serialize(
      object.maker,
      specifiedType: const FullType(String),
    );
    yield r'hash';
    yield serializers.serialize(
      object.hash,
      specifiedType: const FullType(String),
    );
    yield r'asset';
    yield serializers.serialize(
      object.asset,
      specifiedType: const FullType(Asset),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(OrderActivityMatchSideTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderActivityMatchSide object, {
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
    required OrderActivityMatchSideBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'maker':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.maker = valueDes;
          break;
        case r'hash':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.hash = valueDes;
          break;
        case r'asset':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Asset),
          ) as Asset;
          result.asset.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityMatchSideTypeEnum),
          ) as OrderActivityMatchSideTypeEnum;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderActivityMatchSide deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityMatchSideBuilder();
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

class OrderActivityMatchSideTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'SELL')
  static const OrderActivityMatchSideTypeEnum SELL =
      _$orderActivityMatchSideTypeEnum_SELL;
  @BuiltValueEnumConst(wireName: r'BID')
  static const OrderActivityMatchSideTypeEnum BID =
      _$orderActivityMatchSideTypeEnum_BID;

  static Serializer<OrderActivityMatchSideTypeEnum> get serializer =>
      _$orderActivityMatchSideTypeEnumSerializer;

  const OrderActivityMatchSideTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityMatchSideTypeEnum> get values =>
      _$orderActivityMatchSideTypeEnumValues;
  static OrderActivityMatchSideTypeEnum valueOf(String name) =>
      _$orderActivityMatchSideTypeEnumValueOf(name);
}
