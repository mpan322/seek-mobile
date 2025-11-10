//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/order_open_sea_v1_data_v1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'open_sea_v1_order_bid.g.dart';

/// OpenSeaV1OrderBid
///
/// Properties:
/// * [type]
/// * [data]
@BuiltValue()
abstract class OpenSeaV1OrderBid
    implements Built<OpenSeaV1OrderBid, OpenSeaV1OrderBidBuilder> {
  @BuiltValueField(wireName: r'type')
  OpenSeaV1OrderBidTypeEnum get type;
  // enum typeEnum {  OPEN_SEA_V1,  };

  @BuiltValueField(wireName: r'data')
  OrderOpenSeaV1DataV1 get data;

  OpenSeaV1OrderBid._();

  factory OpenSeaV1OrderBid([void updates(OpenSeaV1OrderBidBuilder b)]) =
      _$OpenSeaV1OrderBid;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OpenSeaV1OrderBidBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OpenSeaV1OrderBid> get serializer =>
      _$OpenSeaV1OrderBidSerializer();
}

class _$OpenSeaV1OrderBidSerializer
    implements PrimitiveSerializer<OpenSeaV1OrderBid> {
  @override
  final Iterable<Type> types = const [OpenSeaV1OrderBid, _$OpenSeaV1OrderBid];

  @override
  final String wireName = r'OpenSeaV1OrderBid';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OpenSeaV1OrderBid object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(OpenSeaV1OrderBidTypeEnum),
    );
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(OrderOpenSeaV1DataV1),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    OpenSeaV1OrderBid object, {
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
    required OpenSeaV1OrderBidBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OpenSeaV1OrderBidTypeEnum),
          ) as OpenSeaV1OrderBidTypeEnum;
          result.type = valueDes;
          break;
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderOpenSeaV1DataV1),
          ) as OrderOpenSeaV1DataV1;
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
  OpenSeaV1OrderBid deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OpenSeaV1OrderBidBuilder();
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

class OpenSeaV1OrderBidTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'OPEN_SEA_V1')
  static const OpenSeaV1OrderBidTypeEnum oPENSEAV1 =
      _$openSeaV1OrderBidTypeEnum_oPENSEAV1;

  static Serializer<OpenSeaV1OrderBidTypeEnum> get serializer =>
      _$openSeaV1OrderBidTypeEnumSerializer;

  const OpenSeaV1OrderBidTypeEnum._(String name) : super(name);

  static BuiltSet<OpenSeaV1OrderBidTypeEnum> get values =>
      _$openSeaV1OrderBidTypeEnumValues;
  static OpenSeaV1OrderBidTypeEnum valueOf(String name) =>
      _$openSeaV1OrderBidTypeEnumValueOf(name);
}
