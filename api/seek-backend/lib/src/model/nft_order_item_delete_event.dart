//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_order_deleted_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_item_delete_event.g.dart';

/// NftOrderItemDeleteEvent
///
/// Properties:
/// * [item]
/// * [type]
@BuiltValue()
abstract class NftOrderItemDeleteEvent
    implements Built<NftOrderItemDeleteEvent, NftOrderItemDeleteEventBuilder> {
  @BuiltValueField(wireName: r'item')
  NftOrderDeletedItem get item;

  @BuiltValueField(wireName: r'type')
  NftOrderItemDeleteEventTypeEnum? get type;
  // enum typeEnum {  DELETE,  };

  NftOrderItemDeleteEvent._();

  factory NftOrderItemDeleteEvent(
          [void updates(NftOrderItemDeleteEventBuilder b)]) =
      _$NftOrderItemDeleteEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderItemDeleteEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderItemDeleteEvent> get serializer =>
      _$NftOrderItemDeleteEventSerializer();
}

class _$NftOrderItemDeleteEventSerializer
    implements PrimitiveSerializer<NftOrderItemDeleteEvent> {
  @override
  final Iterable<Type> types = const [
    NftOrderItemDeleteEvent,
    _$NftOrderItemDeleteEvent
  ];

  @override
  final String wireName = r'NftOrderItemDeleteEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderItemDeleteEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'item';
    yield serializers.serialize(
      object.item,
      specifiedType: const FullType(NftOrderDeletedItem),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftOrderItemDeleteEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderItemDeleteEvent object, {
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
    required NftOrderItemDeleteEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'item':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderDeletedItem),
          ) as NftOrderDeletedItem;
          result.item.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderItemDeleteEventTypeEnum),
          ) as NftOrderItemDeleteEventTypeEnum;
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
  NftOrderItemDeleteEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderItemDeleteEventBuilder();
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

class NftOrderItemDeleteEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftOrderItemDeleteEventTypeEnum DELETE =
      _$nftOrderItemDeleteEventTypeEnum_DELETE;

  static Serializer<NftOrderItemDeleteEventTypeEnum> get serializer =>
      _$nftOrderItemDeleteEventTypeEnumSerializer;

  const NftOrderItemDeleteEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOrderItemDeleteEventTypeEnum> get values =>
      _$nftOrderItemDeleteEventTypeEnumValues;
  static NftOrderItemDeleteEventTypeEnum valueOf(String name) =>
      _$nftOrderItemDeleteEventTypeEnumValueOf(name);
}
