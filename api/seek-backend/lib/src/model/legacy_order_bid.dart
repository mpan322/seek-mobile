//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/order_data_legacy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'legacy_order_bid.g.dart';

/// LegacyOrderBid
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class LegacyOrderBid
    implements Built<LegacyOrderBid, LegacyOrderBidBuilder> {
  @BuiltValueField(wireName: r'type')
  LegacyOrderBidTypeEnum get type;
  // enum typeEnum {  RARIBLE_V1,  };

  @BuiltValueField(wireName: r'data')
  OrderDataLegacy get data;

  LegacyOrderBid._();

  factory LegacyOrderBid([void updates(LegacyOrderBidBuilder b)]) =
      _$LegacyOrderBid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LegacyOrderBidBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LegacyOrderBid> get serializer =>
      _$LegacyOrderBidSerializer();
}

class _$LegacyOrderBidSerializer
    implements PrimitiveSerializer<LegacyOrderBid> {
  @override
  final Iterable<Type> types = const [LegacyOrderBid, _$LegacyOrderBid];

  @override
  final String wireName = r'LegacyOrderBid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LegacyOrderBid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(LegacyOrderBidTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderDataLegacy),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    LegacyOrderBid object, {
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
    required LegacyOrderBidBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(LegacyOrderBidTypeEnum),
          ) as LegacyOrderBidTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderDataLegacy),
          ) as OrderDataLegacy;
          result.data.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LegacyOrderBid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LegacyOrderBidBuilder();
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

class LegacyOrderBidTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'RARIBLE_V1')
  static const LegacyOrderBidTypeEnum rARIBLEV1 =
      _$legacyOrderBidTypeEnum_rARIBLEV1;

  static Serializer<LegacyOrderBidTypeEnum> get serializer =>
      _$legacyOrderBidTypeEnumSerializer;

  const LegacyOrderBidTypeEnum._(String name) : super(name);

  static BuiltSet<LegacyOrderBidTypeEnum> get values =>
      _$legacyOrderBidTypeEnumValues;
  static LegacyOrderBidTypeEnum valueOf(String name) =>
      _$legacyOrderBidTypeEnumValueOf(name);
}
