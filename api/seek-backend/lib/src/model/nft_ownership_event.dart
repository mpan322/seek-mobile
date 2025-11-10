//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_ownership_delete_event.dart';
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_ownership_update_event.dart';
import 'package:seek_backend/src/model/nft_deleted_ownership.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

part 'nft_ownership_event.g.dart';

/// NftOwnershipEvent
///
/// Properties:
/// * [eventId]
/// * [ownershipId]
/// * [ownership]
/// * [type]
@BuiltValue()
abstract class NftOwnershipEvent
    implements Built<NftOwnershipEvent, NftOwnershipEventBuilder> {
  @BuiltValueField(wireName: r'ownershipId')
  String get ownershipId;

  @BuiltValueField(wireName: r'eventId')
  String get eventId;

  /// One Of [NftOwnershipDeleteEvent], [NftOwnershipUpdateEvent]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';

  static const Map<String, Type> discriminatorMapping = {
    r'DELETE': NftOwnershipDeleteEvent,
    r'UPDATE': NftOwnershipUpdateEvent,
  };

  NftOwnershipEvent._();

  factory NftOwnershipEvent([void updates(NftOwnershipEventBuilder b)]) =
      _$NftOwnershipEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipEvent> get serializer =>
      _$NftOwnershipEventSerializer();
}

extension NftOwnershipEventDiscriminatorExt on NftOwnershipEvent {
  String? get discriminatorValue {
    if (this is NftOwnershipDeleteEvent) {
      return r'DELETE';
    }
    if (this is NftOwnershipUpdateEvent) {
      return r'UPDATE';
    }
    return null;
  }
}

extension NftOwnershipEventBuilderDiscriminatorExt on NftOwnershipEventBuilder {
  String? get discriminatorValue {
    if (this is NftOwnershipDeleteEventBuilder) {
      return r'DELETE';
    }
    if (this is NftOwnershipUpdateEventBuilder) {
      return r'UPDATE';
    }
    return null;
  }
}

class _$NftOwnershipEventSerializer
    implements PrimitiveSerializer<NftOwnershipEvent> {
  @override
  final Iterable<Type> types = const [NftOwnershipEvent, _$NftOwnershipEvent];

  @override
  final String wireName = r'NftOwnershipEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipEvent object, {
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
    NftOwnershipEvent object, {
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
    required NftOwnershipEventBuilder result,
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
  NftOwnershipEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipEventBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(NftOwnershipEvent.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      NftOwnershipDeleteEvent,
      NftOwnershipUpdateEvent,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case r'DELETE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftOwnershipDeleteEvent),
        ) as NftOwnershipDeleteEvent;
        oneOfType = NftOwnershipDeleteEvent;
        break;
      case r'UPDATE':
        oneOfResult = serializers.deserialize(
          oneOfDataSrc,
          specifiedType: FullType(NftOwnershipUpdateEvent),
        ) as NftOwnershipUpdateEvent;
        oneOfType = NftOwnershipUpdateEvent;
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

class NftOwnershipEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftOwnershipEventTypeEnum UPDATE =
      _$nftOwnershipEventTypeEnum_UPDATE;
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftOwnershipEventTypeEnum DELETE =
      _$nftOwnershipEventTypeEnum_DELETE;

  static Serializer<NftOwnershipEventTypeEnum> get serializer =>
      _$nftOwnershipEventTypeEnumSerializer;

  const NftOwnershipEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipEventTypeEnum> get values =>
      _$nftOwnershipEventTypeEnumValues;
  static NftOwnershipEventTypeEnum valueOf(String name) =>
      _$nftOwnershipEventTypeEnumValueOf(name);
}
