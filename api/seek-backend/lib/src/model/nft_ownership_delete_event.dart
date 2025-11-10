//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:seek_backend/src/model/nft_deleted_ownership.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'nft_ownership_delete_event.g.dart';

/// NftOwnershipDeleteEvent
///
/// Properties:
/// * [ownership]
/// * [type]
@BuiltValue()
abstract class NftOwnershipDeleteEvent
    implements Built<NftOwnershipDeleteEvent, NftOwnershipDeleteEventBuilder> {
  @BuiltValueField(wireName: r'ownership')
  NftDeletedOwnership get ownership;

  @BuiltValueField(wireName: r'type')
  NftOwnershipDeleteEventTypeEnum? get type;
  // enum typeEnum {  DELETE,  };

  NftOwnershipDeleteEvent._();

  factory NftOwnershipDeleteEvent(
          [void updates(NftOwnershipDeleteEventBuilder b)]) =
      _$NftOwnershipDeleteEvent;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(NftOwnershipDeleteEventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<NftOwnershipDeleteEvent> get serializer =>
      _$NftOwnershipDeleteEventSerializer();
}

class _$NftOwnershipDeleteEventSerializer
    implements PrimitiveSerializer<NftOwnershipDeleteEvent> {
  @override
  final Iterable<Type> types = const [
    NftOwnershipDeleteEvent,
    _$NftOwnershipDeleteEvent
  ];

  @override
  final String wireName = r'NftOwnershipDeleteEvent';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    NftOwnershipDeleteEvent object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'ownership';
    yield serializers.serialize(
      object.ownership,
      specifiedType: const FullType(NftDeletedOwnership),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(NftOwnershipDeleteEventTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    NftOwnershipDeleteEvent object, {
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
    required NftOwnershipDeleteEventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ownership':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftDeletedOwnership),
          ) as NftDeletedOwnership;
          result.ownership.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(NftOwnershipDeleteEventTypeEnum),
          ) as NftOwnershipDeleteEventTypeEnum;
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
  NftOwnershipDeleteEvent deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = NftOwnershipDeleteEventBuilder();
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

class NftOwnershipDeleteEventTypeEnum extends EnumClass {
  @BuiltValueEnumConst(wireName: r'DELETE')
  static const NftOwnershipDeleteEventTypeEnum DELETE =
      _$nftOwnershipDeleteEventTypeEnum_DELETE;

  static Serializer<NftOwnershipDeleteEventTypeEnum> get serializer =>
      _$nftOwnershipDeleteEventTypeEnumSerializer;

  const NftOwnershipDeleteEventTypeEnum._(String name) : super(name);

  static BuiltSet<NftOwnershipDeleteEventTypeEnum> get values =>
      _$nftOwnershipDeleteEventTypeEnumValues;
  static NftOwnershipDeleteEventTypeEnum valueOf(String name) =>
      _$nftOwnershipDeleteEventTypeEnumValueOf(name);
}
