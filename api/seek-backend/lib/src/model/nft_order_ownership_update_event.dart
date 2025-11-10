//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:seek_backend/src/model/nft_order_ownership.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_ownership_update_event.g.dart';

/// NftOrderOwnershipUpdateEvent
///
/// Properties:
/// * [ownership]
/// * [type]
@BuiltValue()
abstract class NftOrderOwnershipUpdateEvent
    implements
        Built<NftOrderOwnershipUpdateEvent,
            NftOrderOwnershipUpdateEventBuilder> {
  @BuiltValueField(wireName: r'ownership')
  NftOrderOwnership get ownership;

  @BuiltValueField(wireName: r'type')
  NftOrderOwnershipUpdateEventTypeEnum? get type;
  // enum typeEnum {  UPDATE,  };

  NftOrderOwnershipUpdateEvent._();

  factory NftOrderOwnershipUpdateEvent(
          [void updates(NftOrderOwnershipUpdateEventBuilder b)]) =
      _$NftOrderOwnershipUpdateEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderOwnershipUpdateEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderOwnershipUpdateEvent> get serializer =>
      _$NftOrderOwnershipUpdateEventSerializer();
}

class _$NftOrderOwnershipUpdateEventSerializer
    implements PrimitiveSerializer<NftOrderOwnershipUpdateEvent> {
  @override
  final Iterable<Type> types = const [
    NftOrderOwnershipUpdateEvent,
    _$NftOrderOwnershipUpdateEvent
  ];

  @override
  final String wireName = r'NftOrderOwnershipUpdateEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderOwnershipUpdateEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ownership';
    yield serializers.serialize(
      object.ownership,
      specifiedType: const FullType(NftOrderOwnership),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftOrderOwnershipUpdateEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderOwnershipUpdateEvent object, {
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
    required NftOrderOwnershipUpdateEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownership':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderOwnership),
          ) as NftOrderOwnership;
          result.ownership.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderOwnershipUpdateEventTypeEnum),
          ) as NftOrderOwnershipUpdateEventTypeEnum;
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
  NftOrderOwnershipUpdateEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderOwnershipUpdateEventBuilder();
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

class NftOrderOwnershipUpdateEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'UPDATE')
  static const NftOrderOwnershipUpdateEventTypeEnum UPDATE =
      _$nftOrderOwnershipUpdateEventTypeEnum_UPDATE;

  static Serializer<NftOrderOwnershipUpdateEventTypeEnum> get serializer =>
      _$nftOrderOwnershipUpdateEventTypeEnumSerializer;

  const NftOrderOwnershipUpdateEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOrderOwnershipUpdateEventTypeEnum> get values =>
      _$nftOrderOwnershipUpdateEventTypeEnumValues;
  static NftOrderOwnershipUpdateEventTypeEnum valueOf(String name) =>
      _$nftOrderOwnershipUpdateEventTypeEnumValueOf(name);
}
