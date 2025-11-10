//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_order_deleted_ownership.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_order_ownership_delete_event.g.dart';

/// NftOrderOwnershipDeleteEvent
///
/// Properties:
/// * [ownership]
/// * [type]
@BuiltValue()
abstract class NftOrderOwnershipDeleteEvent
    implements
        Built<NftOrderOwnershipDeleteEvent,
            NftOrderOwnershipDeleteEventBuilder> {
  @BuiltValueField(wireName: r'ownership')
  NftOrderDeletedOwnership get ownership;

  @BuiltValueField(wireName: r'type')
  NftOrderOwnershipDeleteEventTypeEnum? get type;
  // enum typeEnum {  DELETE,  };

  NftOrderOwnershipDeleteEvent._();

  factory NftOrderOwnershipDeleteEvent(
          [void updates(NftOrderOwnershipDeleteEventBuilder b)]) =
      _$NftOrderOwnershipDeleteEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOrderOwnershipDeleteEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOrderOwnershipDeleteEvent> get serializer =>
      _$NftOrderOwnershipDeleteEventSerializer();
}

class _$NftOrderOwnershipDeleteEventSerializer
    implements PrimitiveSerializer<NftOrderOwnershipDeleteEvent> {
  @override
  final Iterable<Type> types = const [
    NftOrderOwnershipDeleteEvent,
    _$NftOrderOwnershipDeleteEvent
  ];

  @override
  final String wireName = r'NftOrderOwnershipDeleteEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOrderOwnershipDeleteEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ownership';
    yield serializers.serialize(
      object.ownership,
      specifiedType: const FullType(NftOrderDeletedOwnership),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftOrderOwnershipDeleteEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOrderOwnershipDeleteEvent object, {
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
    required NftOrderOwnershipDeleteEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownership':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderDeletedOwnership),
          ) as NftOrderDeletedOwnership;
          result.ownership.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOrderOwnershipDeleteEventTypeEnum),
          ) as NftOrderOwnershipDeleteEventTypeEnum;
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
  NftOrderOwnershipDeleteEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOrderOwnershipDeleteEventBuilder();
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

class NftOrderOwnershipDeleteEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftOrderOwnershipDeleteEventTypeEnum DELETE =
      _$nftOrderOwnershipDeleteEventTypeEnum_DELETE;

  static Serializer<NftOrderOwnershipDeleteEventTypeEnum> get serializer =>
      _$nftOrderOwnershipDeleteEventTypeEnumSerializer;

  const NftOrderOwnershipDeleteEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOrderOwnershipDeleteEventTypeEnum> get values =>
      _$nftOrderOwnershipDeleteEventTypeEnumValues;
  static NftOrderOwnershipDeleteEventTypeEnum valueOf(String name) =>
      _$nftOrderOwnershipDeleteEventTypeEnumValueOf(name);
}
