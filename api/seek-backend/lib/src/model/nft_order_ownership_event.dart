//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_order_deleted_ownership.dart';
import 'package:seek_backend/src/model/nft_order_ownership_update_event.dart';
import 'package:seek_backend/src/model/nft_order_ownership_delete_event.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_order_ownership_event.g.dart';

/// NftOrderOwnershipEvent
///
/// Properties:
/// * [eventId]
/// * [ownershipId]
/// * [ownership]
/// * [type]
@BuiltValue()
abstract class NftOrderOwnershipEvent
    implements Built<NftOrderOwnershipEvent, NftOrderOwnershipEventBuilder> {
  @BuiltValueField(wireName: r'ownershipId')
  String get ownershipId;

  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  /// One Of [NftOrderOwnershipDeleteEvent], [NftOrderOwnershipUpdateEvent]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DELETE': NftOrderOwnershipDeleteEvent,
    r'UPDATE': NftOrderOwnershipUpdateEvent,
  };

  NftOrderOwnershipEvent._();

  factory NftOrderOwnershipEvent(
          [void updates(NftOrderOwnershipEventBuilder b)]) =
      _$NftOrderOwnershipEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderOwnershipEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderOwnershipEvent> get serializer =>
      _$NftOrderOwnershipEventSerializer();
}

extension NftOrderOwnershipEventDiscriminatorExt on NftOrderOwnershipEvent {
  String? get discriminatorValue {
    if (this is NftOrderOwnershipDeleteEvent) {
      return r'DELETE';
    }
    if (this is NftOrderOwnershipUpdateEvent) {
      return r'UPDATE';
    }
    return null;
  }
}

extension NftOrderOwnershipEventBuilderDiscriminatorExt
    on NftOrderOwnershipEventBuilder {
  String? get discriminatorValue {
    if (this is NftOrderOwnershipDeleteEventBuilder) {
      return r'DELETE';
    }
    if (this is NftOrderOwnershipUpdateEventBuilder) {
      return r'UPDATE';
    }
    return null;
  }
}

class _$NftOrderOwnershipEventSerializer
    implements PrimitiveSerializer<NftOrderOwnershipEvent> {
  @override
  final Iterable<Type> types = const [
    NftOrderOwnershipEvent,
    _$NftOrderOwnershipEvent
  ];

  @override
  final String wireName = r'NftOrderOwnershipEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderOwnershipEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ownershipId';
    yield serializers.serialize(
      object.ownershipId,
      specifiedType: const FullType(String),
    );
    yield r'eventId';
    yield serializers.serialize(
      object.eventId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderOwnershipEvent object, {
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
    required NftOrderOwnershipEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownershipId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ownershipId = valueDes;
          break;
        case r'eventId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.eventId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  NftOrderOwnershipEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderOwnershipEventBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(NftOrderOwnershipEvent.discriminatorFieldName) +
            1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      NftOrderOwnershipDeleteEvent,
      NftOrderOwnershipUpdateEvent,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'DELETE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftOrderOwnershipDeleteEvent),
        ) as NftOrderOwnershipDeleteEvent;
        oneOfType = NftOrderOwnershipDeleteEvent;
        break;
      case r'UPDATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftOrderOwnershipUpdateEvent),
        ) as NftOrderOwnershipUpdateEvent;
        oneOfType = NftOrderOwnershipUpdateEvent;
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

class NftOrderOwnershipEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftOrderOwnershipEventTypeEnum UPDATE =
      _$nftOrderOwnershipEventTypeEnum_UPDATE;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftOrderOwnershipEventTypeEnum DELETE =
      _$nftOrderOwnershipEventTypeEnum_DELETE;

  static Serializer<NftOrderOwnershipEventTypeEnum> get serializer =>
      _$nftOrderOwnershipEventTypeEnumSerializer;

  const NftOrderOwnershipEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOrderOwnershipEventTypeEnum> get values =>
      _$nftOrderOwnershipEventTypeEnumValues;
  static NftOrderOwnershipEventTypeEnum valueOf(String name) =>
      _$nftOrderOwnershipEventTypeEnumValueOf(name);
}
