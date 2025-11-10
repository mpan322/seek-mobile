//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_order_deleted_item.dart';
import 'package:seek_backend/src/model/nft_order_item_delete_event.dart';
import 'package:seek_backend/src/model/nft_order_item_update_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_order_item_event.g.dart';

/// NftOrderItemEvent
///
/// Properties:
/// * [eventId]
/// * [itemId]
/// * [item]
/// * [type]
@BuiltValue()
abstract class NftOrderItemEvent
    implements Built<NftOrderItemEvent, NftOrderItemEventBuilder> {
  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'itemId')
  String get itemId;

  /// One Of [NftOrderItemDeleteEvent], [NftOrderItemUpdateEvent]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DELETE': NftOrderItemDeleteEvent,
    r'UPDATE': NftOrderItemUpdateEvent,
  };

  NftOrderItemEvent._();

  factory NftOrderItemEvent([void updates(NftOrderItemEventBuilder b)]) =
      _$NftOrderItemEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderItemEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderItemEvent> get serializer =>
      _$NftOrderItemEventSerializer();
}

extension NftOrderItemEventDiscriminatorExt on NftOrderItemEvent {
  String? get discriminatorValue {
    if (this is NftOrderItemDeleteEvent) {
      return r'DELETE';
    }
    if (this is NftOrderItemUpdateEvent) {
      return r'UPDATE';
    }
    return null;
  }
}

extension NftOrderItemEventBuilderDiscriminatorExt on NftOrderItemEventBuilder {
  String? get discriminatorValue {
    if (this is NftOrderItemDeleteEventBuilder) {
      return r'DELETE';
    }
    if (this is NftOrderItemUpdateEventBuilder) {
      return r'UPDATE';
    }
    return null;
  }
}

class _$NftOrderItemEventSerializer
    implements PrimitiveSerializer<NftOrderItemEvent> {
  @override
  final Iterable<Type> types = const [NftOrderItemEvent, _$NftOrderItemEvent];

  @override
  final String wireName = r'NftOrderItemEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderItemEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
    yield r'itemId';
    yield serializers.serialize(
      object.itemId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderItemEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final oneOf = object.oneOf;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
    final result =
        _serializeProperties(serializers, object, specifiedType: specifiedType)
            .toList();
    result.addAll(serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType)) as Iterable<Object?>);
    return result;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required NftOrderItemEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventId = valueDes;
          break;
        case r'itemId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.itemId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOrderItemEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderItemEventBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(NftOrderItemEvent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      NftOrderItemDeleteEvent,
      NftOrderItemUpdateEvent,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'DELETE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftOrderItemDeleteEvent),
        ) as NftOrderItemDeleteEvent;
        oneOfType = NftOrderItemDeleteEvent;
        break;
      case r'UPDATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftOrderItemUpdateEvent),
        ) as NftOrderItemUpdateEvent;
        oneOfType = NftOrderItemUpdateEvent;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}

class NftOrderItemEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftOrderItemEventTypeEnum UPDATE =
      _$nftOrderItemEventTypeEnum_UPDATE;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftOrderItemEventTypeEnum DELETE =
      _$nftOrderItemEventTypeEnum_DELETE;

  static Serializer<NftOrderItemEventTypeEnum> get serializer =>
      _$nftOrderItemEventTypeEnumSerializer;

  const NftOrderItemEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOrderItemEventTypeEnum> get values =>
      _$nftOrderItemEventTypeEnumValues;
  static NftOrderItemEventTypeEnum valueOf(String name) =>
      _$nftOrderItemEventTypeEnumValueOf(name);
}
