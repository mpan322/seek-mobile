//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/asset_type.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'order_activity_cancel_list.g.dart';

/// OrderActivityCancelList
///
/// Properties:
/// * [atType]
/// * [hash]
/// * [maker]
/// * [make]
/// * [take]
/// * [transactionHash]
/// * [blockHash]
/// * [blockNumber]
/// * [logIndex]
@BuiltValue()
abstract class OrderActivityCancelList
    implements Built<OrderActivityCancelList, OrderActivityCancelListBuilder> {
  @BuiltValueField(wireName: r'@type')
  OrderActivityCancelListAtTypeEnum get atType;
  // enum atTypeEnum {  cancel_list,  };

  @BuiltValueField(wireName: r'hash')
  String get hash;

  @BuiltValueField(wireName: r'maker')
  String get maker;

  @BuiltValueField(wireName: r'make')
  AssetType get make;

  @BuiltValueField(wireName: r'take')
  AssetType get take;

  @BuiltValueField(wireName: r'transactionHash')
  String get transactionHash;

  @BuiltValueField(wireName: r'blockHash')
  String get blockHash;

  @BuiltValueField(wireName: r'blockNumber')
  int get blockNumber;

  @BuiltValueField(wireName: r'logIndex')
  int get logIndex;

  OrderActivityCancelList._();

  factory OrderActivityCancelList(
          [void updates(OrderActivityCancelListBuilder b)]) =
      _$OrderActivityCancelList;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OrderActivityCancelListBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OrderActivityCancelList> get serializer =>
      _$OrderActivityCancelListSerializer();
}

class _$OrderActivityCancelListSerializer
    implements PrimitiveSerializer<OrderActivityCancelList> {
  @override
  final Iterable<Type> types = const [
    OrderActivityCancelList,
    _$OrderActivityCancelList
  ];

  @override
  final String wireName = r'OrderActivityCancelList';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    OrderActivityCancelList object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'@type';
    yield serializers.serialize(
      object.atType,
      specifiedType: const FullType(OrderActivityCancelListAtTypeEnum),
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
      specifiedType: const FullType(AssetType),
    );
    yield r'take';
    yield serializers.serialize(
      object.take,
      specifiedType: const FullType(AssetType),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    OrderActivityCancelList object, {
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
    required OrderActivityCancelListBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'@type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(OrderActivityCancelListAtTypeEnum),
          ) as OrderActivityCancelListAtTypeEnum;
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
            specifiedType: const FullType(AssetType),
          ) as AssetType;
          result.make.replace(valueDes);
          break;
        case r'take':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AssetType),
          ) as AssetType;
          result.take.replace(valueDes);
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  OrderActivityCancelList deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = OrderActivityCancelListBuilder();
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

class OrderActivityCancelListAtTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'cancel_list')
  static const OrderActivityCancelListAtTypeEnum cancelList =
      _$orderActivityCancelListAtTypeEnum_cancelList;

  static Serializer<OrderActivityCancelListAtTypeEnum> get serializer =>
      _$orderActivityCancelListAtTypeEnumSerializer;

  const OrderActivityCancelListAtTypeEnum._(String name) : super(name);

  static BuiltSet<OrderActivityCancelListAtTypeEnum> get values =>
      _$orderActivityCancelListAtTypeEnumValues;
  static OrderActivityCancelListAtTypeEnum valueOf(String name) =>
      _$orderActivityCancelListAtTypeEnumValueOf(name);
}
