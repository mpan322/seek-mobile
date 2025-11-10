//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_order_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_item_update_event.g.dart';

/// NftOrderItemUpdateEvent
///
/// Properties:
/// * [item]
/// * [type]
@BuiltValue()
abstract class NftOrderItemUpdateEvent
    implements Built<NftOrderItemUpdateEvent, NftOrderItemUpdateEventBuilder> {
  @BuiltValueField(wireName: r'item')
  NftOrderItem get item;

  @BuiltValueField(wireName: r'type')
  NftOrderItemUpdateEventTypeEnum? get type;
  // enum typeEnum {  UPDATE,  };

  NftOrderItemUpdateEvent._();

  factory NftOrderItemUpdateEvent(
          [void updates(NftOrderItemUpdateEventBuilder b)]) =
      _$NftOrderItemUpdateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderItemUpdateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderItemUpdateEvent> get serializer =>
      _$NftOrderItemUpdateEventSerializer();
}

class _$NftOrderItemUpdateEventSerializer
    implements PrimitiveSerializer<NftOrderItemUpdateEvent> {
  @override
  final Iterable<Type> types = const [
    NftOrderItemUpdateEvent,
    _$NftOrderItemUpdateEvent
  ];

  @override
  final String wireName = r'NftOrderItemUpdateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderItemUpdateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(NftOrderItem),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftOrderItemUpdateEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderItemUpdateEvent object, {
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
    required NftOrderItemUpdateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderItem),
          ) as NftOrderItem;
          result.item.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderItemUpdateEventTypeEnum),
          ) as NftOrderItemUpdateEventTypeEnum;
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
  NftOrderItemUpdateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderItemUpdateEventBuilder();
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

class NftOrderItemUpdateEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftOrderItemUpdateEventTypeEnum UPDATE =
      _$nftOrderItemUpdateEventTypeEnum_UPDATE;

  static Serializer<NftOrderItemUpdateEventTypeEnum> get serializer =>
      _$nftOrderItemUpdateEventTypeEnumSerializer;

  const NftOrderItemUpdateEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOrderItemUpdateEventTypeEnum> get values =>
      _$nftOrderItemUpdateEventTypeEnumValues;
  static NftOrderItemUpdateEventTypeEnum valueOf(String name) =>
      _$nftOrderItemUpdateEventTypeEnumValueOf(name);
}
