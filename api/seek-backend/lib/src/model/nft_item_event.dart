//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_item_delete_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_item_update_event.dart';
import 'package:seek_backend/src/model/nft_deleted_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_item_event.g.dart';

/// NftItemEvent
///
/// Properties:
/// * [eventId]
/// * [itemId]
/// * [item]
/// * [type]
@BuiltValue()
abstract class NftItemEvent
    implements Built<NftItemEvent, NftItemEventBuilder> {
  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  @BuiltValueField(wireName: r'itemId')
  String get itemId;

  /// One Of [NftItemDeleteEvent], [NftItemUpdateEvent]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DELETE': NftItemDeleteEvent,
    r'UPDATE': NftItemUpdateEvent,
  };

  NftItemEvent._();

  factory NftItemEvent([void updates(NftItemEventBuilder b)]) = _$NftItemEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftItemEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftItemEvent> get serializer => _$NftItemEventSerializer();
}

extension NftItemEventDiscriminatorExt on NftItemEvent {
  String? get discriminatorValue {
    if (this is NftItemDeleteEvent) {
      return r'DELETE';
    }
    if (this is NftItemUpdateEvent) {
      return r'UPDATE';
    }
    return null;
  }
}

extension NftItemEventBuilderDiscriminatorExt on NftItemEventBuilder {
  String? get discriminatorValue {
    if (this is NftItemDeleteEventBuilder) {
      return r'DELETE';
    }
    if (this is NftItemUpdateEventBuilder) {
      return r'UPDATE';
    }
    return null;
  }
}

class _$NftItemEventSerializer implements PrimitiveSerializer<NftItemEvent> {
  @override
  final Iterable<Type> types = const [NftItemEvent, _$NftItemEvent];

  @override
  final String wireName = r'NftItemEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftItemEvent object, {
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
    NftItemEvent object, {
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
    required NftItemEventBuilder result,
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
  NftItemEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftItemEventBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(NftItemEvent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      NftItemDeleteEvent,
      NftItemUpdateEvent,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'DELETE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftItemDeleteEvent),
        ) as NftItemDeleteEvent;
        oneOfType = NftItemDeleteEvent;
        break;
      case r'UPDATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftItemUpdateEvent),
        ) as NftItemUpdateEvent;
        oneOfType = NftItemUpdateEvent;
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

class NftItemEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftItemEventTypeEnum UPDATE = _$nftItemEventTypeEnum_UPDATE;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftItemEventTypeEnum DELETE = _$nftItemEventTypeEnum_DELETE;

  static Serializer<NftItemEventTypeEnum> get serializer =>
      _$nftItemEventTypeEnumSerializer;

  const NftItemEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftItemEventTypeEnum> get values =>
      _$nftItemEventTypeEnumValues;
  static NftItemEventTypeEnum valueOf(String name) =>
      _$nftItemEventTypeEnumValueOf(name);
}
